import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

FS_SIM = 200e3
FS_ADC = 8e3
F_FRAME = 1 / 4.615e-3
T_FRAME = 4.615e-3
T_BURST = 0.577e-3
T_RISE = 28e-6
R = 10e3
C = 10e-9
TAU = R * C
N = 480
K = round(N * F_FRAME / FS_ADC)
SIGMA = 0.005
BASE = 0.100
LEVEL_THR = 0.002
FRAC_THR = 0.08


def burst_envelope(t, amp, slots=1, seed_phase=0.0):
    x = np.zeros_like(t)
    tt = (t + seed_phase) % T_FRAME
    slot = T_FRAME / 8
    for s in range(slots):
        t0 = s * slot
        on = (tt >= t0) & (tt < t0 + T_BURST)
        x[on] = amp
        rise = (tt >= t0) & (tt < t0 + T_RISE)
        x[rise] = amp * 0.5 * (1 - np.cos(np.pi * (tt[rise] - t0) / T_RISE))
        fall = (tt >= t0 + T_BURST - T_RISE) & (tt < t0 + T_BURST)
        x[fall] = amp * 0.5 * (1 + np.cos(np.pi * (tt[fall] - (t0 + T_BURST - T_RISE)) / T_RISE))
    return x


def peak_detector(x, fs, tau):
    a = np.exp(-1 / (fs * tau))
    y = np.empty_like(x)
    prev = 0.0
    for i, v in enumerate(x):
        prev = v if v > prev * a else prev * a
        y[i] = prev
    return y


def adc_sample(y, rng, phase_s):
    step = int(round(FS_SIM / FS_ADC))
    off = int(phase_s * FS_SIM) % step
    s = y[off::step][:N]
    s = s + BASE + rng.normal(0, SIGMA, s.size)
    return np.clip(s, 0, 3.3)


def goertzel_power(x, k):
    n = len(x)
    w = 2 * np.pi * k / n
    c = 2 * np.cos(w)
    s1 = s2 = 0.0
    for v in x:
        s0 = v + c * s1 - s2
        s2 = s1
        s1 = s0
    return s1 * s1 + s2 * s2 - c * s1 * s2


def classify(win):
    level = np.mean(win) - BASE
    ac = win - np.mean(win)
    p_tot = np.sum(ac * ac)
    p_k = goertzel_power(ac, K)
    frac = (2 * p_k / len(win)) / (p_tot / 1.0) if p_tot > 0 else 0.0
    level_ok = level > LEVEL_THR
    gsm_ok = frac > FRAC_THR
    if level_ok and gsm_ok:
        return 2, level, frac
    if level_ok:
        return 1, level, frac
    return 0, level, frac


def make_window(kind, amp, rng):
    dur = N / FS_ADC + 0.01
    t = np.arange(int(dur * FS_SIM)) / FS_SIM
    ph = rng.uniform(0, T_FRAME)
    if kind == "gsm1":
        x = burst_envelope(t, amp, 1, ph)
    elif kind == "gsm2":
        x = burst_envelope(t, amp, 2, ph)
    elif kind == "cw":
        x = np.full_like(t, amp * 0.125)
    elif kind == "lte":
        x = amp * 0.125 * (1 + 0.15 * rng.standard_normal(t.size // 20).repeat(20)[: t.size])
        x = np.clip(x, 0, None)
    elif kind == "mains":
        x = amp * 0.125 * (1 + 0.5 * np.sin(2 * np.pi * 50 * t + ph))
    else:
        x = np.zeros_like(t)
    y = peak_detector(x, FS_SIM, TAU) if kind in ("gsm1", "gsm2") else x
    return adc_sample(y, rng, rng.uniform(0, 1 / FS_ADC)), t, x, y


def run_sim():
    rng = np.random.default_rng(7)

    # Fig 1: waveform chain
    t = np.arange(int(0.025 * FS_SIM)) / FS_SIM
    x = burst_envelope(t, 0.2, 1, 0.0)
    y = peak_detector(x, FS_SIM, TAU)
    step = int(FS_SIM / FS_ADC)
    ts = t[::step]
    ys = y[::step] + BASE + rng.normal(0, SIGMA, ts.size)
    fig, ax = plt.subplots(2, 1, figsize=(9, 6), sharex=True)
    ax[0].plot(t * 1e3, x, lw=1)
    ax[0].set_ylabel("IF envelope (V)")
    ax[0].set_title("GSM burst: 577 \u00b5s every 4.615 ms (217 Hz)")
    ax[1].plot(t * 1e3, y + BASE, lw=1, label="detector output (RC = 10 k\u03a9 \u00d7 10 nF)")
    ax[1].stem(ts * 1e3, ys, linefmt="C3-", markerfmt="C3o", basefmt=" ", label="ADC samples, 8 kHz")
    ax[1].set_xlabel("time (ms)")
    ax[1].set_ylabel("voltage (V)")
    ax[1].legend(loc="upper right")
    for a in ax:
        a.grid(alpha=0.3)
    plt.tight_layout()
    plt.savefig("fig10_1_envelope_and_sampling.png", dpi=150)
    plt.close()

    # Fig 2: spectrum of one window (Goertzel bins)
    win, *_ = make_window("gsm1", 0.2, rng)
    ac = win - win.mean()
    bins = np.arange(1, N // 2)
    pw = np.array([goertzel_power(ac, k) for k in bins]) * 2 / N
    fk = bins * FS_ADC / N
    plt.figure(figsize=(9, 4))
    plt.plot(fk, 10 * np.log10(pw + 1e-18), lw=1)
    plt.axvline(K * FS_ADC / N, color="r", ls="--", label=f"Goertzel bin k={K} ({K*FS_ADC/N:.1f} Hz)")
    plt.xlabel("frequency (Hz)")
    plt.ylabel("bin power (dB, arb.)")
    plt.title("Window spectrum, GSM burst at 0.2 V (N=480, 60 ms)")
    plt.legend()
    plt.grid(alpha=0.3)
    plt.tight_layout()
    plt.savefig("fig10_2_goertzel_spectrum.png", dpi=150)
    plt.close()

    # Table: scenario results
    TR = 200
    scen = [("GSM, 1 slot, 0.20 V", "gsm1", 0.20), ("GSM, 2 slots, 0.20 V", "gsm2", 0.20),
            ("GSM, 1 slot, 0.05 V", "gsm1", 0.05), ("Continuous carrier (CW)", "cw", 0.20),
            ("LTE-like noisy envelope", "lte", 0.20), ("50 Hz mains-like AM", "mains", 0.20),
            ("No signal", "none", 0.0)]
    rows = []
    for name, kind, amp in scen:
        cnt = [0, 0, 0]
        lv, fr = [], []
        for _ in range(TR):
            w, *_ = make_window(kind, amp, rng)
            c, l, f = classify(w)
            cnt[c] += 1
            lv.append(l)
            fr.append(f)
        rows.append((name, np.mean(lv) * 1e3, np.mean(fr), cnt[0] / TR * 100, cnt[1] / TR * 100, cnt[2] / TR * 100))

    with open("task10_results.md", "w") as f:
        f.write("| Scenario | Mean level (mV) | 217 Hz fraction | No alarm (%) | Level only (%) | GSM alarm (%) |\n|---|---|---|---|---|---|\n")
        for r in rows:
            f.write(f"| {r[0]} | {r[1]:.1f} | {r[2]:.3f} | {r[3]:.0f} | {r[4]:.0f} | {r[5]:.0f} |\n")
    print(open("task10_results.md").read())

    # Fig 3: detection probability vs amplitude
    amps = np.array([0.005, 0.01, 0.015, 0.02, 0.03, 0.05, 0.1, 0.2])
    pd = []
    for a in amps:
        ok = 0
        for _ in range(TR):
            w, *_ = make_window("gsm1", a, rng)
            ok += classify(w)[0] == 2
        pd.append(ok / TR * 100)
    plt.figure(figsize=(7, 4))
    plt.semilogx(amps * 1e3, pd, "o-")
    plt.xlabel("burst amplitude at detector output (mV)")
    plt.ylabel("GSM alarm probability (%)")
    plt.title(f"Detection vs level ({TR} trials/point, noise \u03c3 = {SIGMA*1e3:.0f} mV)")
    plt.grid(alpha=0.3, which="both")
    plt.tight_layout()
    plt.savefig("fig10_3_detection_vs_level.png", dpi=150)
    plt.close()
    print("amp_mV", (amps * 1e3).tolist())
    print("Pd_%", pd)
    print("K", K, "bin freq", K * FS_ADC / N)

    # false alarm over many noise-only and CW windows
    fa = sum(classify(make_window("none", 0, rng)[0])[0] == 2 for _ in range(1000))
    fc = sum(classify(make_window("cw", 0.2, rng)[0])[0] == 2 for _ in range(1000))
    print("false GSM alarms: noise", fa, "/1000, CW", fc, "/1000")

    # dump a test vector for host C test
    w, *_ = make_window("gsm1", 0.2, np.random.default_rng(1))
    np.savetxt("vec_gsm.csv", np.round(w / 3.3 * 4095).astype(int), fmt="%d")
    w, *_ = make_window("cw", 0.2, np.random.default_rng(2))
    np.savetxt("vec_cw.csv", np.round(w / 3.3 * 4095).astype(int), fmt="%d")


def load_envelope_csv(path):
    ts, vs = [], []
    import re
    for line in open(path):
        tok = [t for t in re.split(r"[,;\s]+", line.strip()) if t]
        if len(tok) < 2:
            continue
        try:
            t0, v0 = float(tok[0]), float(tok[1])
        except ValueError:
            continue
        ts.append(t0)
        vs.append(v0)
    return np.array(ts), np.array(vs)


def run_csv(path, skip, idle_path, noise_mv, gain, trials):
    t, v = load_envelope_csv(path)
    keep = t >= t[0] + skip
    t, v = t[keep] - t[keep][0], v[keep]
    dur = t[-1]
    if idle_path:
        _, vi = load_envelope_csv(idle_path)
        base = float(np.median(vi))
    else:
        base = float(np.median(v))
    v = base + gain * (v - base)
    rng = np.random.default_rng(3)
    win_t = N / FS_ADC
    direct = dur >= win_t + 1e-3
    print(f"file: {path}")
    print(f"capture: {len(t)} points, {dur*1e3:.3f} ms, step {np.median(np.diff(t))*1e9:.1f} ns")
    print(f"baseline (median{' of idle file' if idle_path else ' of capture'}): {base*1e3:.3f} mV, gain applied: {gain}")
    print(f"noise added at ADC: sigma = {noise_mv} mV")
    print("mode:", "direct window" if direct else f"capture wrapped every {T_FRAME*1e3:.3f} ms (needs at least one full frame)")
    if not direct and dur < T_FRAME:
        raise SystemExit(f"capture is {dur*1e3:.2f} ms, shorter than one GSM frame (4.615 ms): re-export a longer run")
    counts = [0, 0, 0]
    lv, fr = [], []
    for _ in range(trials):
        phase = rng.uniform(0, 1 / FS_ADC)
        ts = phase + np.arange(N) / FS_ADC
        if direct:
            ts = ts + rng.uniform(0, max(dur - win_t - 1e-3, 0))
            y = np.interp(ts, t, v)
        else:
            y = np.interp(ts % T_FRAME, t, v)
        y = y + rng.normal(0, noise_mv * 1e-3, N)
        y = np.clip(y, 0, 3.3)
        c, l, f = classify_with_base(y, base)
        counts[c] += 1
        lv.append(l)
        fr.append(f)
    print(f"mean level above baseline: {np.mean(lv)*1e3:.3f} mV   level threshold: {LEVEL_THR*1e3:.1f} mV")
    print(f"mean 217 Hz fraction: {np.mean(fr):.3f}   threshold: {FRAC_THR}")
    print(f"result over {trials} random sampling phases: none {counts[0]/trials*100:.0f}%, level-only {counts[1]/trials*100:.0f}%, GSM {counts[2]/trials*100:.0f}%")


def classify_with_base(win, base):
    level = np.mean(win) - base
    ac = win - np.mean(win)
    p_tot = np.sum(ac * ac)
    p_k = goertzel_power(ac, K)
    frac = (2 * p_k / len(win)) / p_tot if p_tot > 0 else 0.0
    if level > LEVEL_THR and frac > FRAC_THR:
        return 2, level, frac
    if level > LEVEL_THR:
        return 1, level, frac
    return 0, level, frac


if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("envelope_csv", nargs="?")
    ap.add_argument("--idle")
    ap.add_argument("--skip", type=float, default=0.0)
    ap.add_argument("--noise-mv", type=float, default=0.0)
    ap.add_argument("--gain", type=float, default=1.0)
    ap.add_argument("--trials", type=int, default=200)
    a = ap.parse_args()
    if a.envelope_csv:
        run_csv(a.envelope_csv, a.skip, a.idle, a.noise_mv, a.gain, a.trials)
    else:
        run_sim()
