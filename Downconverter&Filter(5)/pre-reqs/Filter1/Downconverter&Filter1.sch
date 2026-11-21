<Qucs Schematic 26.1.1>
<Properties>
  <View=-310,-63,1919,991,0.564474,0,0>
  <Grid=10,10,1>
  <DataSet=Downconverter&Filter1.dat>
  <DataDisplay=Downconverter&Filter1.dpl>
  <OpenDisplay=0>
  <Script=Downconverter&Filter1.m>
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
  <GND * 1 0 330 0 0 0 0>
  <R R1 1 120 190 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 0 210 18 -26 0 1 "10 mV" 1 "832 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <Vac V2 1 0 290 18 -26 0 1 "1 V" 1 "800 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <.TR TR1 1 160 280 0 56 0 0 "lin" 1 "0" 1 "3 us" 1 "30001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Diode D1 1 40 140 -26 -99 0 2 "2.2e-8 A" 1 "1.08" 1 "0.7 pF" 1 "0.5" 0 "0.65 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "6 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "10" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0 "Generic" 0 "Generic" 0>
  <C C1 1 230 140 -32 -66 0 0 "12.63 pF" 1 "" 0 "neutral" 0>
  <L L1 1 180 140 -26 10 0 0 "1.989 uH" 1 "" 0>
  <GND * 1 120 220 0 0 0 0>
  <R R3 1 270 190 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 270 220 0 0 0 0>
  <Eqn Eqn1 1 30 410 -28 18 0 0 "Spec_in=Time2Freq(OUT.Vt, time)" 1 "Spec_out=Time2Freq(Filter_out.Vt, time)" 1 "Spec_in_dB=dB(Spec_in)" 1 "Spec_out_dB=dB(Spec_out)" 1 "yes" 0>
</Components>
<Wires>
  <0 320 0 330 "" 0 0 0 "">
  <0 240 0 260 "" 0 0 0 "">
  <0 140 10 140 "" 0 0 0 "">
  <0 140 0 180 "" 0 0 0 "">
  <200 140 210 140 "" 0 0 0 "">
  <70 140 120 140 "OUT" 130 90 36 "">
  <120 140 120 160 "" 0 0 0 "">
  <120 140 150 140 "" 0 0 0 "">
  <270 140 270 160 "" 0 0 0 "">
  <260 140 270 140 "" 0 0 0 "">
  <270 140 270 140 "Filter_out" 320 110 0 "">
</Wires>
<Diagrams>
  <Rect 505 425 455 374 3 #c0c0c0 1 00 0 0 2e+09 2e+09 1 -160 20 0 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"Spec_in_dB" #0000ff 1 3 0 0 0>
	  <Mkr 8e+08 211 -439 5 0 0>
	  <Mkr 8.32e+08 192 -322 3 0 0>
	  <Mkr 1.632e+09 226 -71 5 0 0>
  </Rect>
  <Rect 500 882 465 352 3 #c0c0c0 1 00 0 0 2e+09 2e+09 1 -190.448 20 -50.8189 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_out_dB" #0000ff 1 3 0 0 0>
	  <Mkr 8.32e+08 180 -90 5 0 0>
	  <Mkr 8e+08 221 -363 5 0 0>
	  <Mkr 1.632e+09 396 -303 5 0 0>
  </Rect>
  <Rect 1100 419 455 369 3 #c0c0c0 1 00 0 0 2e+09 1e+08 1 -160 20 0 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"Spec_in_dB" #0000ff 1 3 0 0 0>
	  <Mkr 3.2e+07 201 -249 5 0 0>
  </Rect>
  <Rect 1110 882 447 353 3 #c0c0c0 1 00 0 0 2e+09 1e+08 1 -190.448 20 -50.8189 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_out_dB" #0000ff 1 3 0 0 0>
	  <Mkr 3.2e+07 194 -330 5 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 0 550 12 #ff0000 0 "Fig 4.8: Diode mixer followed by Filter A">
  <Text 610 470 12 #ff0000 0 "Fig 4.9: spectrum before Filter A , 0-2 GHz">
  <Text 1160 470 12 #ff0000 0 "Fig 4.10: spectrum before Filter A, 0-100 MHz">
  <Text 600 930 12 #ff0000 0 "Fig 4.11: spectrum after Filter A, 0-2 GHz">
  <Text 1160 930 12 #ff0000 0 "Fig 4.12: spectrum after Filter A, 0-100 MHz\n">
</Paintings>
