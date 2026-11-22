<Qucs Schematic 26.1.1>
<Properties>
  <View=-489,-390,1931,1153,0.385543,0,0>
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
  <GND * 1 -250 180 0 0 0 0>
  <GND * 1 -60 -10 0 0 0 0>
  <R R1 1 -100 -10 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.TR TR1 1 -130 110 0 56 0 0 "lin" 1 "0" 1 "3 us" 1 "30001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn1 1 -240 280 -28 18 0 0 "Spec=Time2Freq(OUT.Vt, time)" 1 "Spec_dB=dB(Spec)" 1 "yes" 0>
  <Diode D1 1 -210 -10 -26 -99 0 2 "2.2e-8 A" 1 "1.08" 1 "0.7 pF" 1 "0.5" 0 "0.65 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "6 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "10" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0 "Generic" 0 "Generic" 0>
  <Vac V1 1 -250 60 18 -26 0 1 "31.6 mV" 1 "832 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <Vac V2 1 -250 140 18 -26 0 1 "316 mV" 1 "800 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
</Components>
<Wires>
  <-250 170 -250 180 "" 0 0 0 "">
  <-70 -10 -60 -10 "" 0 0 0 "">
  <-250 90 -250 110 "" 0 0 0 "">
  <-250 -10 -240 -10 "" 0 0 0 "">
  <-250 -10 -250 30 "" 0 0 0 "">
  <-180 -10 -130 -10 "OUT" -130 -50 24 "">
</Wires>
<Diagrams>
  <Rect 121 93 443 243 3 #c0c0c0 1 00 0 2.85e-06 1e-08 2.95e-06 1 -0.242013 0.1 0.645958 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"OUT.Vt@time" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 120 484 447 278 3 #c0c0c0 1 00 0 0 1e+09 5e+09 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1010 153 380 278 3 #c0c0c0 1 00 0 0 2e+09 1e+08 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1010 810 584 532 3 #c0c0c0 1 00 0 7.5e+08 1e+09 8.5e+08 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 116 813 445 273 3 #c0c0c0 1 00 0 1.55e+09 1e+09 1.7e+09 1 -132.424 20 -6.37965 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_dB@Frequency.0001" #0000ff 1 3 0 0 0>
  </Rect>
  <Tab 610 170 328 320 3 #c0c0c0 1 00 1 89 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 6 0 0 0>
  </Tab>
  <Tab 618 495 321 280 3 #c0c0c0 1 00 1 2428 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 4 1 0 0>
  </Tab>
  <Tab 610 866 325 326 3 #c0c0c0 1 00 1 2491 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 3 1 0 0>
  </Tab>
  <Tab -290 865 277 315 3 #c0c0c0 1 00 1 4889 1 1 1 0 1 1 1 0 1 30001 315 0 225 1 0 0 "" "" "">
	<"Spec_dB" #0000ff 0 4 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text -380 390 12 #ff0000 0 "Fig 3.1: Diode mixer schematic (RF 832 MHz, LO 800 MHz)">
  <Text 180 -190 12 #ff0000 0 "Fig 3.2: Mixer output voltage vs time, 2.85-2.95 µs">
  <Text 210 170 12 #ff0000 0 "Fig 3.3: Mixer output spectrum, 0-5 GHz">
  <Text 1020 -160 12 #ff0000 0 "Fig 3.4: Output spectrum, 0-100 MHz (32 MHz IF)">
  <Text 60 880 12 #ff0000 0 "Fig 3.6: Output spectrum, 1.55-1.7 GHz (1600 MHz LO 2nd harmonic, 1632 MHz sum)">
  <Text 620 -180 12 #ff0000 0 "Table 3.1: Spectrum values around 32 MHz (IF)">
  <Text 630 180 12 #ff0000 0 "Table 3.2: Spectrum values around 810 MHz">
  <Text 600 510 12 #ff0000 0 "Table 3.3: Spectrum values around 832 MHz">
  <Text -310 880 12 #ff0000 0 "Table 3.4: Spectrum values around 1632 MHz ">
</Paintings>
