<Qucs Schematic 26.1.1>
<Properties>
  <View=-741,-538,2188,1169,0.564474,549,369>
  <Grid=10,10,1>
  <DataSet=RF_Mixer.dat>
  <DataDisplay=RF_Mixer.dpl>
  <OpenDisplay=0>
  <Script=RF_Mixer.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 -310 240 0 0 0 0>
  <GND * 1 -120 50 0 0 0 0>
  <R R1 1 -160 50 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 -190 170 0 56 0 0 "lin" 1 "0" 1 "3 us" 1 "30001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn1 1 -300 340 -28 18 0 0 "Spec=Time2Freq(OUT.Vt, time)" 1 "Spec_dB=dB(Spec)" 1 "yes" 0>
  <Vac V2 1 -310 200 18 -26 0 1 "316 mV" 1 "800 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <Vac V1 1 -310 120 18 -26 0 1 "31.6 mV" 1 "832 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
</Components>
<Wires>
  <-310 230 -310 240 "" 0 0 0 "">
  <-130 50 -120 50 "" 0 0 0 "">
  <-310 150 -310 170 "" 0 0 0 "">
  <-310 50 -310 90 "" 0 0 0 "">
  <-310 50 -190 50 "OUT" -190 10 94 "">
</Wires>
<Diagrams>
  <Rect 61 153 443 243 3 #c0c0c0 1 00 0 2.85e-06 1e-08 2.95e-06 1 -0.242013 0.1 0.645958 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"OUT.Vt@time" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 60 544 447 278 3 #c0c0c0 1 00 0 0 1e+09 5e+09 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 950 213 380 278 3 #c0c0c0 1 00 0 0 2e+09 1e+08 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 950 910 584 532 3 #c0c0c0 1 00 0 7.5e+08 1e+09 8.5e+08 1 -366.745 50 15.7573 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
	  <Mkr 8.32e+08 551 -474 5 0 0>
	  <Mkr 8e+08 332 -568 5 0 0>
  </Rect>
  <Rect 56 873 445 273 3 #c0c0c0 1 00 0 1.55e+09 1e+09 1.7e+09 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Tab 550 230 328 320 3 #c0c0c0 1 00 1 89 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 6 0 0 0>
  </Tab>
  <Tab 558 555 321 280 3 #c0c0c0 1 00 1 2428 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 4 1 0 0>
  </Tab>
  <Tab 550 926 325 326 3 #c0c0c0 1 00 1 2491 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab -350 925 277 315 3 #c0c0c0 1 00 1 4889 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 4 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 120 -130 12 #ff0000 0 "Fig 3.2: Mixer output voltage vs time, 2.85-2.95 µs">
  <Text 150 230 12 #ff0000 0 "Fig 3.3: Mixer output spectrum, 0-5 GHz">
  <Text 960 -100 12 #ff0000 0 "Fig 3.4: Output spectrum, 0-100 MHz (32 MHz IF)">
  <Text 0 940 12 #ff0000 0 "Fig 3.6: Output spectrum, 1.55-1.7 GHz (1600 MHz LO 2nd harmonic, 1632 MHz sum)">
  <Text 560 -120 12 #ff0000 0 "Table 3.1: Spectrum values around 32 MHz (IF)">
  <Text 570 240 12 #ff0000 0 "Table 3.2: Spectrum values around 810 MHz">
  <Text 540 570 12 #ff0000 0 "Table 3.3: Spectrum values around 832 MHz">
  <Text -370 940 12 #ff0000 0 "Table 3.4: Spectrum values around 1632 MHz ">
</Paintings>
