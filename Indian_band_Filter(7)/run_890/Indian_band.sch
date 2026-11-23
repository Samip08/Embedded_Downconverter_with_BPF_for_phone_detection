<Qucs Schematic 26.1.1>
<Properties>
  <View=-1686,-64,2568,1741,0.928114,1473,1080>
  <Grid=10,10,1>
  <DataSet=Indian_band.dat>
  <DataDisplay=Indian_band.dpl>
  <OpenDisplay=0>
  <Script=Indian_band.m>
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
  <L L1 1 280 230 8 -26 0 1 "129.6nH" 1 "" 0>
  <C C1 1 250 230 -8 46 0 1 "217.2pF" 1 "" 0 "neutral" 0>
  <GND * 1 280 260 0 0 0 0>
  <L L2 1 390 150 -26 -44 0 0 "391.4nH" 1 "" 0>
  <C C2 1 330 150 -26 10 0 0 "71.91pF" 1 "" 0 "neutral" 0>
  <L L3 1 420 230 8 -26 0 1 "87nH" 1 "" 0>
  <C C3 1 390 230 -8 46 0 1 "323.5pF" 1 "" 0 "neutral" 0>
  <GND * 1 420 260 0 0 0 0>
  <L L4 1 530 150 -26 -44 0 0 "391.4nH" 1 "" 0>
  <C C4 1 470 150 -26 10 0 0 "71.91pF" 1 "" 0 "neutral" 0>
  <L L5 1 560 230 8 -26 0 1 "129.6nH" 1 "" 0>
  <C C5 1 530 230 -8 46 0 1 "217.2pF" 1 "" 0 "neutral" 0>
  <GND * 1 560 260 0 0 0 0>
  <GND * 1 670 260 0 0 0 0>
  <GND * 1 80 340 0 0 0 0>
  <R R1 1 200 200 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Diode D1 1 120 150 -26 -99 0 2 "2.2e-8 A" 1 "1.08" 1 "0.7 pF" 1 "0.5" 0 "0.65 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "6 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "10" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0 "Generic" 0 "Generic" 0>
  <GND * 1 200 230 0 0 0 0>
  <R R2 1 670 210 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 80 220 18 -26 0 1 "10 mV" 1 "890 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <Vac V2 1 80 300 18 -26 0 1 "1 V" 1 "870 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <.TR TR1 1 -60 170 0 56 0 0 "lin" 1 "0" 1 "3 us" 1 "30001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Eqn Eqn1 1 280 370 -28 15 0 0 "Spec_in=Time2Freq(OUT.Vt, time)" 1 "Spec_out=Time2Freq(Filter_out.Vt, time)" 1 "Spec_in_dB=dB(Spec_in)" 1 "Spec_out_dB=dB(Spec_out)" 1 "yes" 0>
</Components>
<Wires>
  <280 150 280 200 "" 0 0 0 "">
  <420 150 420 200 "" 0 0 0 "">
  <560 150 560 200 "" 0 0 0 "">
  <280 150 300 150 "" 0 0 0 "">
  <250 200 280 200 "" 0 0 0 "">
  <250 260 280 260 "" 0 0 0 "">
  <420 150 440 150 "" 0 0 0 "">
  <390 200 420 200 "" 0 0 0 "">
  <390 260 420 260 "" 0 0 0 "">
  <530 200 560 200 "" 0 0 0 "">
  <530 260 560 260 "" 0 0 0 "">
  <560 150 670 150 "Filter_out" 650 120 64 "">
  <80 330 80 340 "" 0 0 0 "">
  <80 250 80 270 "" 0 0 0 "">
  <80 150 90 150 "" 0 0 0 "">
  <80 150 80 190 "" 0 0 0 "">
  <150 150 200 150 "" 0 0 0 "">
  <200 150 280 150 "OUT" 200 70 42 "">
  <200 150 200 170 "" 0 0 0 "">
  <670 240 670 260 "" 0 0 0 "">
  <670 150 670 180 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -142 942 515 432 3 #c0c0c0 1 00 0 0 2e+09 2e+09 1 -150.08 20 -20 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_in_dB" #0000ff 1 3 0 0 0>
	  <Mkr 8.7e+08 251 -410 5 0 0>
	  <Mkr 8.9e+08 234 -296 5 0 0>
	  <Mkr 1.76e+09 466 -294 5 0 0>
  </Rect>
  <Rect 540 941 498 425 3 #c0c0c0 1 00 0 0 1e+09 2e+09 1 -169.249 20 -40 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_out_dB" #0000ff 1 3 0 0 0>
	  <Mkr 8.7e+08 -8 -63 5 0 0>
	  <Mkr 8.9e+08 288 -180 6 0 0>
	  <Mkr 1.76e+09 455 -129 5 0 0>
  </Rect>
  <Rect -142 1451 522 439 3 #c0c0c0 1 00 0 0 2e+09 1e+08 1 -150.08 20 -20 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_in_dB" #0000ff 1 3 0 0 0>
	  <Mkr 2e+07 157 -399 5 0 0>
  </Rect>
  <Rect 540 1438 506 428 3 #c0c0c0 1 00 0 0 1e+09 1e+08 1 -169.249 20 -40 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Spec_out_dB" #0000ff 1 3 0 0 0>
	  <Mkr 2e+07 144 -405 5 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 510 330 12 #000000 0 "Chebyshev band-pass filter \n 20MHz...45MHz, pi-type, \n impedance matching 50 Ohm">
  <Text 340 30 12 #ff0000 0 "Fig 7.1: chain schematic, LO 870 MHz">
  <Text -170 480 12 #ff0000 0 "Fig 7.2: spectra before Filter for RF 890 MHz(0-2Ghz)">
  <Text 580 480 12 #ff0000 0 "Fig 7.3: spectra after Filter for RF 890 MHz(0-2Ghz)">
  <Text -50 1500 12 #ff0000 0 "Fig 7.4: spectra before Filter for RF 890 MHz(0-100Mhz)">
  <Text 620 1480 12 #ff0000 0 "Fig 7.5: spectra after Filter for RF 890 MHz(100Mhz)">
</Paintings>
