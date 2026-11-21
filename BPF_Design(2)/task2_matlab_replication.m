%% EC301 Project 15 - Task 2: MATLAB replication of the downconverter + BPF
% Base paper: N. W. Scott, "Study of Cellular Phone Detection Techniques",
% M.S. thesis, Univ. Nebraska-Lincoln, 2011, Sec. 5.2.2.2.1 (pp. 32-35).
%
% Part A  - Exact replication of the thesis code (Figs. 4, 5, 6).
%           Targets (Task 1 checklist M1-M3):
%             M1: unfiltered peaks 0.466 at the 31.25 and 1632.8 MHz bins
%             M2: filter peak 0 dB near 31.7 MHz, about -54.6 dB at 1632 MHz
%             M3: filtered peak 0.396 at the 31.25 MHz bin
% Part B  - Improved Butterworth BPF, SAME order as the Qucs-S LC filter (Task 4):
%             3-dB band 29-35 MHz (thesis design band), N_LC = 3 resonators
%             (6th-order bandpass); plus an order sweep N = 2..7 to justify N.
% Part C  - Off-band check at 900 and 700 MHz (thesis Figs. 9-10; Task 5 preview).
%
% Requires: MATLAB with Signal Processing Toolbox (butter, zp2sos, sosfilt,
% freqz, hann). Uses no release-specific plotting functions.
% All figures are saved as PNG in ./task2_figures for the report.

clear; close all; clc;
outdir = 'task2_figures';
if ~exist(outdir, 'dir'), mkdir(outdir); end

%% ===================== PART A: thesis code, unchanged =====================
% Units in the thesis code are MHz, so Fs = 4000 means 4 GHz.
Fs = 4000;                       % Sampling frequency (MHz units -> 4 GHz)
T  = 1/Fs;                       % Sample time
L  = 1000;                       % Length of signal (0.25 us)
t  = (0:L-1)*T;                  % Time vector

X = sin(2*pi*800*t) .* sin(2*pi*832*t);     % VCO x RF product
[b, a] = butter(1, [0.014 0.018]);          % thesis filter: 28-36 MHz, 2nd-order BPF
x = filter(b, a, X);

figure('Name','A - Fig. 5 replica');
freqz(b, a, L, 4e9);
title('Part A (thesis Fig. 5): Bandpass filter response, butter(1,[0.014 0.018])');
saveas(gcf, fullfile(outdir, 'A_fig5_thesis_filter_response.png'));

NFFT = 2^nextpow2(L);
Y = fft(x, NFFT)/L;              % filtered
R = fft(X, NFFT)/L;              % not filtered
f = Fs/2*linspace(0, 1, NFFT/2+1);
Ru = 2*abs(R(1:NFFT/2+1));
Yu = 2*abs(Y(1:NFFT/2+1));

figure('Name','A - Fig. 4 replica');
plot(f, Ru); grid on;
title('Part A (thesis Fig. 4): Frequency spectrum - unfiltered');
xlabel('Frequency (MHz)'); ylabel('Magnitude (linear; thesis axis says dB)');
saveas(gcf, fullfile(outdir, 'A_fig4_unfiltered.png'));

figure('Name','A - Fig. 6 replica');
plot(f, Yu); grid on;
title('Part A (thesis Fig. 6): Frequency spectrum - filtered with bandpass');
xlabel('Frequency (MHz)'); ylabel('Magnitude (linear; thesis axis says dB)');
saveas(gcf, fullfile(outdir, 'A_fig6_filtered.png'));

% Numerical check against the Task 1 targets
[~, i32]   = min(abs(f - 32));    % nearest bin to 32 MHz  (31.25 MHz)
[~, i1632] = min(abs(f - 1632));  % nearest bin to 1632 MHz (1632.8 MHz)
[hA, fA] = freqz(b, a, 2^16, 4e9);
[~, kpk] = max(abs(hA));
[~, k1632] = min(abs(fA - 1632e6));
fprintf('\n===== PART A: thesis replication =====\n');
fprintf('M1  unfiltered: %.4f at %.2f MHz, %.4f at %.2f MHz   (target 0.466 each)\n', ...
        Ru(i32), f(i32), Ru(i1632), f(i1632));
fprintf('M2  filter peak %.2f dB at %.2f MHz; %.1f dB at 1632 MHz (target 0 dB @ ~31.7 MHz, ~-54.6 dB)\n', ...
        20*log10(abs(hA(kpk))), fA(kpk)/1e6, 20*log10(abs(hA(k1632))));
fprintf('M3  filtered:   %.4f at %.2f MHz   (target 0.396)\n', Yu(i32), f(i32));
fprintf('    filtered residue at 1632.8 MHz: %.2e\n', Yu(i1632));

%% ============ PART B: Butterworth BPF, same order as the Qucs-S LC filter ============
% Why not the thesis filter: butter(1,...) is only 2nd order. It rolls off slowly
% (only about 5 dB down at 26 and 38 MHz and 21 dB at 100 MHz, so the 900/700 MHz
% cases leak through), and the 0.25 us window gives 3.9 MHz FFT bins.
%
% Order choice: MATLAB and Qucs-S (Task 4) use the SAME filter so their results
% can be compared directly. A lumped LC ladder is practical up to a few resonators,
% so N_LC = 3 (3 resonators, 6th-order bandpass) is the baseline. It already gives
% about 70 dB at 100 MHz, more than the 55 dB stopband of the thesis's ADS SAW model.
% Matching the SAW's 55 dB at +/-6 MHz (26/38 MHz) would need N of about 9 (18th order),
% which only a SAW/crystal filter can realise - see the order sweep figure.
fs  = 4e9;                        % 4 GHz: 1632 MHz sum is below Nyquist (2 GHz)
N_LC = 3;                         % prototype order = number of LC resonators in Qucs-S
f3dB = [29 35]*1e6;               % 3-dB edges = thesis design band (Qucs-S corner freqs)

[z, p, k] = butter(N_LC, f3dB/(fs/2), 'bandpass');  % zpk form: avoids b,a round-off
sos = zp2sos(z, p, k);                               % second-order sections
N = N_LC;
fprintf('\n===== PART B: Butterworth BPF (same order as Qucs-S) =====\n');
fprintf('N = %d resonators -> bandpass order %d, %d biquad sections\n', N, 2*N, size(sos,1));
fprintf('3-dB edges: 29.000 - 35.000 MHz; Max pole radius: %.6f (stable if < 1)\n', max(abs(p)));

% Order sweep: performance vs number of resonators (for choosing / justifying N)
Nlist = 2:7; probe = [26 38 100 800 1632]*1e6;
att = zeros(numel(Nlist), numel(probe));
for ii = 1:numel(Nlist)
    [zz, pp, kk] = butter(Nlist(ii), f3dB/(fs/2), 'bandpass');
    [hh, ff] = sos_freqz(zp2sos(zz, pp, kk), 2^18, fs);
    for jj = 1:numel(probe)
        [~, q] = min(abs(ff - probe(jj)));
        att(ii, jj) = -20*log10(abs(hh(q)));
    end
end
fprintf('Order sweep - attenuation (dB):\n   N  order    26MHz    38MHz   100MHz   800MHz  1632MHz\n');
for ii = 1:numel(Nlist)
    fprintf('  %2d  %4d  %s\n', Nlist(ii), 2*Nlist(ii), sprintf('%8.1f ', att(ii,:)));
end
figure('Name','B - order sweep');
plot(Nlist, att(:,1), 'o-', Nlist, att(:,2), 's-', Nlist, att(:,3), 'd-', 'LineWidth', 1.2); grid on; hold on;
plot([Nlist(1) Nlist(end)], [55 55], 'r--');
xlabel('Prototype order N (number of LC resonators)'); ylabel('Attenuation (dB)');
legend('26 MHz', '38 MHz', '100 MHz (900/700 MHz input)', 'ADS SAW Astop = 55 dB', 'Location', 'northwest');
title('Butterworth 29-35 MHz BPF: rejection vs order');
saveas(gcf, fullfile(outdir, 'B_order_sweep.png'));

% Frequency response and spec check
[hB, fB] = sos_freqz(sos, 2^20, fs);
magB = 20*log10(abs(hB) + eps);
chk = [26 29 32 35 38 100 1632]*1e6;
fprintf('Spec check (dB):\n');
for q = chk
    [~, j] = min(abs(fB - q));
    fprintf('   %7.1f MHz : %8.2f dB\n', q/1e6, magB(j));
end

figure('Name','B - filter response');
subplot(2,1,1);
plot(fB/1e6, magB, 'LineWidth', 1.2); grid on; hold on;
for v = [26 29 35 38], plot([v v], [-120 5], 'k:'); end
plot([0 70], [-3 -3], 'r--', [0 70], [-55 -55], 'r--');
xlim([0 70]); ylim([-120 5]);
title(sprintf('Part B: Butterworth BPF, N = %d (order %d), 3-dB band 29-35 MHz', N, 2*N));
xlabel('Frequency (MHz)'); ylabel('Magnitude (dB)');
subplot(2,1,2);
plot(fB/1e6, magB, 'LineWidth', 1.2); grid on;
xlim([0 2000]); ylim([-300 5]);
xlabel('Frequency (MHz)'); ylabel('Magnitude (dB)');
title('Wide view: 1632 MHz sum product far into the stopband');
saveas(gcf, fullfile(outdir, 'B_butterworth_response.png'));

figure('Name','B - group delay');
wph = unwrap(angle(hB));                      % group delay = -d(phase)/d(omega)
gd  = -diff(wph) ./ diff(2*pi*fB);
plot(fB(1:end-1)/1e6, gd*1e6); grid on; xlim([20 45]);
xlabel('Frequency (MHz)'); ylabel('Group delay (\mus)');
title('Part B: group delay across the passband');
saveas(gcf, fullfile(outdir, 'B_group_delay.png'));

% Longer simulation so the filter settles and the FFT resolves 32 MHz
Tsim  = 20e-6;                    % 20 us -> 80,000 samples
Tskip = 5e-6;                     % discard start-up transient (settles in ~1.5 us)
n  = round(Tsim*fs);
tt = (0:n-1)/fs;
fLO = 800e6;

[spec_in, spec_out, fr] = run_case(832e6, fLO, tt, fs, Tskip, sos);
figure('Name','B - spectra 832 MHz');
subplot(2,1,1); plot(fr/1e6, spec_in); grid on; xlim([0 2000]);
title('Part B: mixer output, RF 832 MHz, LO 800 MHz (unfiltered)');
xlabel('Frequency (MHz)'); ylabel('Amplitude (linear)');
subplot(2,1,2); plot(fr/1e6, spec_out); grid on; xlim([0 2000]);
title('Part B: after Butterworth BPF (only 32 MHz remains)');
xlabel('Frequency (MHz)'); ylabel('Amplitude (linear)');
saveas(gcf, fullfile(outdir, 'B_spectra_832MHz.png'));

figure('Name','B - spectra 832 MHz (dB)');
plot(fr/1e6, 20*log10(spec_in+1e-12), fr/1e6, 20*log10(spec_out+1e-12)); grid on;
xlim([0 2000]); ylim([-200 0]); legend('Before BPF','After BPF');
xlabel('Frequency (MHz)'); ylabel('Amplitude (dB re 1)');
title('Part B: spectra before and after filtering, dB scale');
saveas(gcf, fullfile(outdir, 'B_spectra_832MHz_dB.png'));

[~, j32] = min(abs(fr - 32e6)); [~, j1632] = min(abs(fr - 1632e6));
fprintf('832 MHz input: 32 MHz %.4f -> %.4f ; 1632 MHz %.4f -> %.2e\n', ...
        spec_in(j32), spec_out(j32), spec_in(j1632), spec_out(j1632));

%% ============ PART C: off-band inputs (thesis Figs. 9 and 10) ============
fprintf('\n===== PART C: off-band check =====\n');
for frf = [900e6 700e6]
    [si, so, fr] = run_case(frf, fLO, tt, fs, Tskip, sos);
    [~, j100] = min(abs(fr - 100e6));
    fprintf('RF %d MHz: 100 MHz IF %.4f -> %.2e ; max output anywhere %.2e\n', ...
            frf/1e6, si(j100), so(j100), max(so));
    figure('Name', sprintf('C - %d MHz', frf/1e6));
    plot(fr/1e6, 20*log10(si+1e-12), fr/1e6, 20*log10(so+1e-12)); grid on;
    xlim([0 2000]); ylim([-200 0]); legend('Before BPF','After BPF');
    xlabel('Frequency (MHz)'); ylabel('Amplitude (dB re 1)');
    title(sprintf('Part C: RF %d MHz, LO 800 MHz - 100 MHz IF rejected', frf/1e6));
    saveas(gcf, fullfile(outdir, sprintf('C_spectra_%dMHz.png', frf/1e6)));
end

%% ============ Comparison summary for the report ============
[~, j26] = min(abs(fA - 26e6)); [~, j38] = min(abs(fA - 38e6));
[~, b26] = min(abs(fB - 26e6)); [~, b38] = min(abs(fB - 38e6)); [~, b1632] = min(abs(fB - 1632e6));
fprintf('\n===== Thesis filter vs improved filter =====\n');
fprintf('%-28s %14s %14s\n', '', 'Thesis', 'Improved');
fprintf('%-28s %14s %14s\n', 'Type / order', 'Butter, 2', sprintf('Butter, %d', 2*N));
fprintf('%-28s %14.1f %14.1f\n', 'Atten. at 26 MHz (dB)', -20*log10(abs(hA(j26))), -magB(b26));
fprintf('%-28s %14.1f %14.1f\n', 'Atten. at 38 MHz (dB)', -20*log10(abs(hA(j38))), -magB(b38));
fprintf('%-28s %14.1f %14s\n',   'Atten. at 1632 MHz (dB)', -20*log10(abs(hA(k1632))), sprintf('> %.0f', min(-magB(b1632), 300)));
fprintf('%-28s %14s %14s\n', 'Sim. window / FFT bin', '0.25 us/3.9 MHz', '15 us/66.7 kHz');

%% ---------------- local functions ----------------
function [h, f] = sos_freqz(sos, nfft, fs)
    % Frequency response of cascaded second-order sections (works in any release)
    h = ones(nfft, 1);
    for r = 1:size(sos, 1)
        [hr, f] = freqz(sos(r,1:3), sos(r,4:6), nfft, fs);
        h = h .* hr;
    end
end

function [spec_in, spec_out, fr] = run_case(frf, flo, tt, fs, Tskip, sos)
    X  = sin(2*pi*flo*tt) .* sin(2*pi*frf*tt);  % ideal multiplier (as in the thesis)
    y  = sosfilt(sos, X);
    s  = round(Tskip*fs) + 1;
    xi = X(s:end); yo = y(s:end);
    Ls = numel(xi);
    w  = hann(Ls).';                             % Hann window, amplitude-corrected below
    spec_in  = 2*abs(fft(xi.*w))/sum(w);
    spec_out = 2*abs(fft(yo.*w))/sum(w);
    spec_in  = spec_in(1:floor(Ls/2)+1);
    spec_out = spec_out(1:floor(Ls/2)+1);
    fr = (0:floor(Ls/2))*fs/Ls;
end
