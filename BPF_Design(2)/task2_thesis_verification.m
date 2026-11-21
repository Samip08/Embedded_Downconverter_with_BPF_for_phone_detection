%% EC301 Project 15 - Task 2 (verification run): thesis filter, thesis specs
% Purpose: verify the numbers with the ORIGINAL thesis order and specs only.
% Nothing here is "improved": the filter is the thesis's butter(1,[0.014 0.018])
% (a 2nd-order Butterworth bandpass, 28-36 MHz). The improved N=3 filter is in
% task2_matlab_replication.m.
%
% Sources used for the data below
%   Thesis: N. W. Scott, "Study of Cellular Phone Detection Techniques",
%           M.S. thesis, Univ. Nebraska-Lincoln, 2011.
%             MATLAB code p. 32; Figs. 4-6 pp. 33-35; ADS Fig. 7 p. 37;
%             Figs. 8-10 pp. 38-40; text p. 36 (826/838 MHz limits).
%   Firmansyah & Oka, SETRUM 4(2), 2015, p. 45 : RF 950, LO 900, IF 50 MHz.
%   Wu & Razavi, IEEE JSSC 33(12), 1998        : NF 4.7 dB (abstract) / 4.5 dB
%                                                (Sec. VII), 3 dB duplexer loss.
%   Keysight ADS "Active Mixer Design", Ch. 10 : RF 900 MHz, IF 45 MHz.
%
% Sections
%   V1  Thesis code, unchanged            -> checklist M1, M2, M3
%   V2  Same test, longer window          -> 832 / 900 / 700 MHz cases (A5, A6 idea)
%   V3  ADS SAW spec mask vs thesis filter-> A7 (826-838 MHz window), spec gap
%   V4  Supporting-paper frequency plans and noise-figure arithmetic
%   V5  PASS/FAIL table of every numeric check
%
% Requires: Signal Processing Toolbox (butter, freqz, hann). No other toolboxes.
% Figures are saved as PNG in ./task2_verification_figures

clear; close all; clc;
outdir = 'task2_verification_figures';
if ~exist(outdir, 'dir'), mkdir(outdir); end

%% ---------------- Data taken from the thesis and papers -----------------
th.Fs      = 4e9;            % Hz. Code uses Fs = 4000 with MHz units
th.L       = 1000;           % samples (0.25 us)
th.NFFT    = 1024;
th.fLO     = 800e6;          % Hz
th.fRF     = 832e6;          % Hz (LG phone seen on analyser)
th.Wn      = [0.014 0.018];  % butter(1, Wn): edges 28 and 36 MHz
% ADS SAW_Filter model, Fig. 7 (read as symmetric about Fcenter)
th.sawFc    = 32e6;   th.sawBWpass = 10e6;  th.sawApass = 1;    % dB
th.sawBWstop= 12e6;   th.sawAstop  = 55;    th.sawIL    = 15;   % dB
% Text p. 36: frequencies above 838 MHz and below 826 MHz are eliminated
th.rfLow = 826e6;  th.rfHigh = 838e6;

sp.firm.RF = 950e6;  sp.firm.LO = 900e6;  sp.firm.IF = 50e6;     % Firmansyah p. 45
sp.keys.RF = 900e6;  sp.keys.IF = 45e6;                           % Keysight Ch. 10
sp.wu.NFrx = 4.7;    sp.wu.NFrx_alt = 4.5;  sp.wu.dupLoss = 3;    % Wu & Razavi, dB

C = {};   % check table rows: {id, description, expected, got, tolerance, unit}
addc = @(C, id, desc, e, g, tol, unit) [C; {id, desc, e, g, tol, unit}];

%% ======================= V1: thesis code, unchanged =======================
Fs = 4000; T = 1/Fs; L = 1000; t = (0:L-1)*T;
X = sin(2*pi*800*t) .* sin(2*pi*832*t);
[b, a] = butter(1, th.Wn);             % thesis filter
x = filter(b, a, X);

figure('Name','V1 - Fig. 5 replica');
freqz(b, a, L, 4e9);
title('V1 (thesis Fig. 5): butter(1,[0.014 0.018]), 2nd-order bandpass');
saveas(gcf, fullfile(outdir, 'V1_fig5_filter_response.png'));

NFFT = 2^nextpow2(L);
Y = fft(x, NFFT)/L;  R = fft(X, NFFT)/L;
f  = Fs/2*linspace(0, 1, NFFT/2+1);
Ru = 2*abs(R(1:NFFT/2+1));  Yu = 2*abs(Y(1:NFFT/2+1));

figure('Name','V1 - Fig. 4 replica');
plot(f, Ru); grid on;
title('V1 (thesis Fig. 4): spectrum, unfiltered');
xlabel('Frequency (MHz)'); ylabel('Magnitude (linear)');
saveas(gcf, fullfile(outdir, 'V1_fig4_unfiltered.png'));

figure('Name','V1 - Fig. 6 replica');
plot(f, Yu); grid on;
title('V1 (thesis Fig. 6): spectrum, filtered');
xlabel('Frequency (MHz)'); ylabel('Magnitude (linear)');
saveas(gcf, fullfile(outdir, 'V1_fig6_filtered.png'));

[~, i32]   = min(abs(f - 32));
[~, i1632] = min(abs(f - 1632));
[hh, ff]   = freqz(b, a, 2^18, 4e9);          % ff in Hz
mag_dB     = 20*log10(abs(hh));
[pk, ipk]  = max(mag_dB);
att1632    = -interp1(ff, mag_dB, 1632e6);

C = addc(C,'M1a','Unfiltered line near 31.25 MHz bin (Fig. 4)',0.466,Ru(i32),0.001,'lin');
C = addc(C,'M1b','Unfiltered line near 1632.8 MHz bin (Fig. 4)',0.466,Ru(i1632),0.001,'lin');
C = addc(C,'M2a','Filter peak frequency (Fig. 5)',31.7,ff(ipk)/1e6,0.2,'MHz');
C = addc(C,'M2b','Filter peak gain (Fig. 5)',0,pk,0.01,'dB');
C = addc(C,'M2c','Filter attenuation at 1632 MHz (Fig. 5)',54.6,att1632,0.1,'dB');
C = addc(C,'M3', 'Filtered line near 31.25 MHz bin (Fig. 6)',0.396,Yu(i32),0.001,'lin');

% Band edges implied by Wn x (Fs/2): 0.014*2000 = 28 MHz, 0.018*2000 = 36 MHz
g = -20*log10(abs(hh));                      % attenuation in dB
iband = find(g <= 3.0103);
C = addc(C,'S1','Lower -3 dB edge = 0.014 x 2000 MHz',28,ff(iband(1))/1e6,0.05,'MHz');
C = addc(C,'S2','Upper -3 dB edge = 0.018 x 2000 MHz',36,ff(iband(end))/1e6,0.05,'MHz');

fprintf('===== V1: thesis code =====\n');
fprintf('M1  unfiltered: %.4f at %.2f MHz, %.4f at %.2f MHz\n', Ru(i32), f(i32), Ru(i1632), f(i1632));
fprintf('M2  peak %.2f dB at %.2f MHz; %.2f dB at 1632 MHz\n', pk, ff(ipk)/1e6, -att1632);
fprintf('M3  filtered: %.4f at %.2f MHz\n\n', Yu(i32), f(i32));

%% ========== V2: same filter, ideal multiplier, long window (20 us) ==========
fs = 4e9;  Tsim = 20e-6;  Tskip = 5e-6;
cases = [832e6 32e6 1632e6;      % RF, wanted/off-band difference, sum
         900e6 100e6 1700e6;
         700e6 100e6 1500e6];
names = {'832 MHz (in band)', '900 MHz (off band)', '700 MHz (off band)'};
figure('Name','V2 - spectra, thesis filter');
for k = 1:3
    [fr, Sin, Sout] = product_spectra(cases(k,1), th.fLO, fs, Tsim, Tskip, b, a);
    subplot(3,1,k);
    plot(fr/1e6, 20*log10(max(Sin,  1e-12))); hold on;
    plot(fr/1e6, 20*log10(max(Sout, 1e-12)));
    grid on; ylim([-120 0]); xlim([0 2000]);
    title(['V2: RF ' names{k} ', LO 800 MHz']);
    ylabel('dB re 1'); legend('Before BPF','After BPF');
    if k == 3, xlabel('Frequency (MHz)'); end
    for j = 2:3
        fq   = cases(k,j);
        lin  = tone_level(Sin,  fr, fq);
        lout = tone_level(Sout, fr, fq);
        attH = 20*log10(lin/lout);                     % time-domain attenuation
        [h1, ~] = freqz(b, a, [2*pi*fq/fs 2*pi*fq/fs]);
        attF = -20*log10(abs(h1(1)));                  % frequency-domain attenuation
        if j == 2 && k == 1
            C = addc(C,'V2-12','832 MHz case: 32 MHz line passes (out/in amplitude)',1,lout/lin,0.005,'ratio');
        else
            C = addc(C,sprintf('V2-%d%d',k,j),sprintf('%s: time-domain vs freqz attenuation at %.0f MHz',names{k},fq/1e6),attF,attH,0.2,'dB');
        end
        fprintf('V2  RF %4.0f MHz, line %6.0f MHz: in %.4f -> out %.3e  (%.2f dB; freqz %.2f dB)\n', ...
                cases(k,1)/1e6, fq/1e6, lin, lout, attH, attF);
    end
end
saveas(gcf, fullfile(outdir, 'V2_spectra_thesis_filter.png'));
fprintf('\n');

% The thesis MATLAB never tested 900/700 MHz; its ADS model did and shows an
% empty output. With the thesis butter() filter the 100 MHz IF is only reduced:
[hh100, ~] = freqz(b, a, [2*pi*100e6/fs 2*pi*100e6/fs]);
att100 = -20*log10(abs(hh100(1)));
C = addc(C,'D1','Thesis filter attenuation at 100 MHz IF (900/700 MHz cases)',21.07,att100,0.1,'dB');

%% ====== V3: ADS SAW spec mask vs thesis filter, A7 (826-838 MHz window) ======
fIF   = (15:0.05:50)*1e6;
[hI, ~] = freqz(b, a, 2*pi*fIF/fs);
attI  = -20*log10(abs(hI));
passLo = th.sawFc - th.sawBWpass/2;   passHi = th.sawFc + th.sawBWpass/2;   % 27, 37 MHz
stopLo = th.sawFc - th.sawBWstop/2;   stopHi = th.sawFc + th.sawBWstop/2;   % 26, 38 MHz
inpass = fIF >= passLo & fIF <= passHi;
worstPass = max(attI(inpass));
att26 = interp1(fIF, attI, stopLo);   att38 = interp1(fIF, attI, stopHi);

figure('Name','V3 - thesis filter vs SAW spec');
rf_axis = (th.fLO + fIF)/1e6;
plot(rf_axis, -attI, 'LineWidth', 1.5); hold on;
plot([rf_axis(1) (th.fLO+passLo)/1e6], [-th.sawApass -th.sawApass], 'r--');
plot([(th.fLO+passLo)/1e6 (th.fLO+passHi)/1e6], [-th.sawApass -th.sawApass], 'r--');
plot([rf_axis(1) (th.fLO+stopLo)/1e6], [-th.sawAstop -th.sawAstop], 'k--');
plot([(th.fLO+stopHi)/1e6 rf_axis(end)], [-th.sawAstop -th.sawAstop], 'k--');
plot([th.rfLow th.rfLow]/1e6, [-80 0], 'k:');  plot([th.rfHigh th.rfHigh]/1e6, [-80 0], 'k:');
grid on; ylim([-80 5]);
xlabel('RF frequency (MHz), IF = RF - 800 MHz'); ylabel('Gain (dB)');
title('V3: thesis butter() filter against the ADS SAW spec (1 dB / 55 dB)');
legend('Thesis butter(1) filter','Apass 1 dB limit','Astop 55 dB limit','Location','southoutside');
saveas(gcf, fullfile(outdir, 'V3_filter_vs_SAW_spec.png'));

% A7: IF window implied by the thesis text equals the SAW BWstop
C = addc(C,'A7a','Text limit 826 MHz -> IF edge = SAW stop edge (Fc - BWstop/2)',(th.rfLow-th.fLO)/1e6,stopLo/1e6,1e-9,'MHz');
C = addc(C,'A7b','Text limit 838 MHz -> IF edge = SAW stop edge (Fc + BWstop/2)',(th.rfHigh-th.fLO)/1e6,stopHi/1e6,1e-9,'MHz');
C = addc(C,'D2','Thesis filter attenuation at 26 MHz IF (RF 826 MHz)',5.5,att26,0.1,'dB');
C = addc(C,'D3','Thesis filter attenuation at 38 MHz IF (RF 838 MHz)',4.85,att38,0.1,'dB');

fprintf('===== V3: spec comparison (gap, not an error) =====\n');
fprintf('SAW spec: <= %.0f dB loss over %.0f-%.0f MHz, >= %.0f dB at <%.0f and >%.0f MHz\n', ...
        th.sawApass, passLo/1e6, passHi/1e6, th.sawAstop, stopLo/1e6, stopHi/1e6);
fprintf('Thesis butter(1): worst passband loss %.2f dB; %.2f dB at 26 MHz; %.2f dB at 38 MHz\n', worstPass, att26, att38);
fprintf('-> the MATLAB filter is far softer than the ADS SAW model; both are in the thesis.\n\n');

%% ======= V4: supporting-paper frequency plans and noise arithmetic =======
plans = [ 800e6  832e6;                 % thesis: LO, RF
          sp.firm.LO  sp.firm.RF;       % Firmansyah & Oka
          sp.keys.RF-sp.keys.IF  sp.keys.RF ];   % Keysight (LO derived = RF - IF)
pname = {'Thesis', 'Firmansyah & Oka', 'Keysight Ch. 10 (LO derived)'};
expIF = [32e6, sp.firm.IF, sp.keys.IF];
fprintf('===== V4: frequency plans (ideal multiplier) =====\n');
for k = 1:3
    flo = plans(k,1);  frf = plans(k,2);
    ifq = abs(frf - flo);  sumq = frf + flo;  imgq = 2*flo - frf;
    [fr, Sin, ~] = product_spectra(frf, flo, fs, Tsim, Tskip, [], []);
    lif = tone_level(Sin, fr, ifq);  lsum = tone_level(Sin, fr, sumq);
    fprintf('%-28s LO %.0f RF %.0f -> IF %.1f MHz (%.3f), sum %.0f MHz (%.3f), image %.0f MHz\n', ...
            pname{k}, flo/1e6, frf/1e6, ifq/1e6, lif, sumq/1e6, lsum, imgq/1e6);
    C = addc(C,sprintf('P%da',k),[pname{k} ': IF = |RF - LO| equals stated IF'],expIF(k)/1e6,ifq/1e6,1e-9,'MHz');
    C = addc(C,sprintf('P%db',k),[pname{k} ': simulated IF line amplitude (ideal 0.5)'],0.5,lif,0.002,'lin');
    C = addc(C,sprintf('P%dc',k),[pname{k} ': simulated sum line amplitude (ideal 0.5)'],0.5,lsum,0.002,'lin');
end
fprintf('\n');

% Wu & Razavi: loss ahead of the receiver adds dB for dB (Friis, first stage loss)
Lduplex = 10^(sp.wu.dupLoss/10);   Frx = 10^(sp.wu.NFrx/10);
NFcasc  = 10*log10(Lduplex * Frx);
C = addc(C,'P4','Wu & Razavi: 3 dB duplexer loss + 4.7 dB receiver NF = cascaded NF',7.7,NFcasc,0.01,'dB');
C = addc(C,'P5','Wu & Razavi: abstract NF (4.7) vs Sec. VII NF (4.5) spread',0.2,sp.wu.NFrx-sp.wu.NFrx_alt,1e-9,'dB');
fprintf('Wu & Razavi: 3 dB duplexer + %.1f dB receiver NF = %.2f dB cascaded NF (%.2f dB with the 4.5 dB value)\n\n', ...
        sp.wu.NFrx, NFcasc, 10*log10(Lduplex*10^(sp.wu.NFrx_alt/10)));

%% ============================ V5: summary table ============================
fprintf('===== V5: check table =====\n');
fprintf('%-6s %-76s %10s %10s %8s  %s\n', 'ID', 'Check', 'Expected', 'Got', 'Tol', 'Result');
npass = 0;
for r = 1:size(C,1)
    ok = abs(C{r,4} - C{r,3}) <= C{r,5};
    npass = npass + ok;
    if ok, res = 'PASS'; else, res = 'FAIL'; end
    fprintf('%-6s %-76s %10.4f %10.4f %8.4g  %s (%s)\n', C{r,1}, C{r,2}, C{r,3}, C{r,4}, C{r,5}, res, C{r,6});
end
fprintf('\n%d of %d checks passed.\n', npass, size(C,1));
fprintf('Expected: all PASS. D1-D3 record how soft the thesis MATLAB filter is\n');
fprintf('against the ADS SAW spec; they are measured values, not pass/fail against the SAW spec.\n');

%% ============================ local functions ============================
function [fr, Sin, Sout] = product_spectra(frf, flo, fs, Tsim, Tskip, b, a)
% Ideal multiplier sin(2*pi*flo*t).*sin(2*pi*frf*t), optional filter (b,a),
% Hann-windowed FFT after discarding the first Tskip seconds (filter transient).
    n  = round(Tsim*fs);
    t  = (0:n-1)'/fs;
    xx = sin(2*pi*flo*t) .* sin(2*pi*frf*t);
    if isempty(b), yy = xx; else, yy = filter(b, a, xx); end
    k  = (0:n-1)' >= round(Tskip*fs);   % index-based: avoids float edge at t = Tskip
    w  = hann(sum(k), 'periodic');
    N  = sum(k);
    S1 = fft(xx(k).*w);  S2 = fft(yy(k).*w);
    half = 1:floor(N/2)+1;
    Sin  = 2*abs(S1(half))/sum(w);
    Sout = 2*abs(S2(half))/sum(w);
    fr   = (half-1)'*fs/N;
end

function lvl = tone_level(S, fr, f0)
% Largest spectral amplitude within +/- 3 bins of f0 (Hann main lobe).
    [~, i] = min(abs(fr - f0));
    lvl = max(S(max(i-3,1):min(i+3,numel(S))));
end
