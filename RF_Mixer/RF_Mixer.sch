<Qucs Schematic 26.1.1>
<Properties>
  <View=-290,-245,1804,667,0.652654,0,0>
  <Grid=10,10,1>
  <DataSet=RF_Mixer.dat>
  <DataDisplay=RF_Mixer.dpl>
  <OpenDisplay=0>
  <Script=task2.m>
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
  <GND * 1 -120 330 0 0 0 0>
  <GND * 1 70 140 0 0 0 0>
  <R R1 1 30 140 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V2 1 -120 210 18 -26 0 1 "10 mV" 1 "832 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <Vac V1 1 -120 290 18 -26 0 1 "1 V" 1 "800 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <.TR TR1 1 0 260 0 56 0 0 "lin" 1 "0" 1 "3 us" 1 "30001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn1 1 -110 430 -28 18 0 0 "Spec=Time2Freq(OUT.Vt, time)" 1 "Spec_dB=dB(Spec)" 1 "yes" 0>
  <Diode D1 1 -80 140 -26 -99 0 2 "2.2e-8 A" 1 "1.08" 1 "0.7 pF" 1 "0.5" 0 "0.65 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "6 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "10" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0 "Generic" 0 "Generic" 0>
</Components>
<Wires>
  <-120 320 -120 330 "" 0 0 0 "">
  <60 140 70 140 "" 0 0 0 "">
  <-120 240 -120 260 "" 0 0 0 "">
  <-120 140 -110 140 "" 0 0 0 "">
  <-120 140 -120 180 "" 0 0 0 "">
  <-50 140 0 140 "OUT" 0 100 24 "">
</Wires>
<Diagrams>
  <Rect 251 243 443 243 3 #c0c0c0 1 00 0 2.85e-06 1e-08 2.95e-06 1 -0.242013 0.1 0.645958 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"OUT.Vt@time" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 250 634 447 278 3 #c0c0c0 1 00 0 0 1e+09 5e+09 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1140 303 380 278 3 #c0c0c0 1 00 0 0 2e+09 1e+08 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1140 960 584 532 3 #c0c0c0 1 00 0 7.5e+08 1e+09 8.5e+08 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 246 963 445 273 3 #c0c0c0 1 00 0 1.55e+09 1e+09 1.7e+09 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Tab 740 320 328 320 3 #c0c0c0 1 00 1 89 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 6 0 0 0>
  </Tab>
  <Tab 748 645 321 280 3 #c0c0c0 1 00 1 2428 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 4 1 0 0>
  </Tab>
  <Tab 740 1016 325 326 3 #c0c0c0 1 00 1 2491 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab -160 1015 277 315 3 #c0c0c0 1 00 1 4889 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 4 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text -250 540 12 #ff0000 0 "Fig 3.1: Diode mixer schematic (RF 832 MHz, LO 800 MHz)">
  <Text 310 -40 12 #ff0000 0 "Fig 3.2: Mixer output voltage vs time, 2.85-2.95 µs">
  <Text 340 320 12 #ff0000 0 "Fig 3.3: Mixer output spectrum, 0-5 GHz">
  <Text 1150 -10 12 #ff0000 0 "Fig 3.4: Output spectrum, 0-100 MHz (32 MHz IF)">
  <Text 1140 400 12 #ff0000 0 "Fig 3.5: Output spectrum, 750-850 MHz (800 MHz LO leakage, 832 MHz RF feedthrough)">
  <Text 190 1030 12 #ff0000 0 "Fig 3.6: Output spectrum, 1.55-1.7 GHz (1600 MHz LO 2nd harmonic, 1632 MHz sum)">
  <Text 750 -30 12 #ff0000 0 "Table 3.1: Spectrum values around 32 MHz (IF)">
  <Text 760 330 12 #ff0000 0 "Table 3.2: Spectrum values around 810 MHz">
  <Text 730 660 12 #ff0000 0 "Table 3.3: Spectrum values around 832 MHz">
  <Text -180 1030 12 #ff0000 0 "Table 3.4: Spectrum values around 1632 MHz ">
</Paintings>
