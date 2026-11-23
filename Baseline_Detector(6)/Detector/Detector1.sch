<Qucs Schematic 26.1.1>
<Properties>
  <View=-560,-246,1093,700,1,631,234>
  <Grid=10,10,1>
  <DataSet=Detector1.dat>
  <DataDisplay=Detector1.dpl>
  <OpenDisplay=0>
  <Script=Detector1.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 140 290 0 0 0 0>
  <GND * 1 350 290 0 0 0 0>
  <C C1 1 240 250 17 79 0 3 "100 nF" 1 "" 0 "neutral" 0>
  <C C2 1 350 260 17 -26 0 1 "100 nF" 1 "" 0 "neutral" 0>
  <.TR TR1 1 220 410 0 56 0 0 "lin" 1 "0" 1 "3 us" 1 "30001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <GND * 1 240 290 0 0 0 0>
  <Diode D1 1 290 220 22 -99 0 2 "2.52e-9 A" 1 "1.752" 1 "4 pF" 1 "0.4" 0 "0.5 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "1.2 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "10" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0 "yes" 0 "Generic" 0 "Generic" 0>
  <Vac V1 1 140 250 18 -26 0 1 "5 V" 1 "32 MHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
</Components>
<Wires>
  <320 220 350 220 "" 0 0 0 "">
  <350 220 350 230 "" 0 0 0 "">
  <140 280 140 290 "" 0 0 0 "">
  <140 220 240 220 "" 0 0 0 "">
  <240 280 240 290 "" 0 0 0 "">
  <240 220 260 220 "" 0 0 0 "">
  <350 220 350 220 "OUT" 380 190 0 "">
</Wires>
<Diagrams>
  <Rect 470 459 395 289 3 #c0c0c0 1 00 1 0 1e-06 3e-06 1 -0.211411 1 2.32552 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"OUT.Vt" #0000ff 1 3 0 0 0>
	  <Mkr 1e-06 146 -231 5 0 0>
	  <Mkr 3e-06 416 -245 5 0 0>
	  <Mkr 2e-06 278 -239 5 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 150 380 12 #ff0000 0 "Fig 6.1: peak detector schematic">
  <Text 460 500 12 #ff0000 0 "Fig 6.2: Diode: 1N4148-class parameters output (Rs = 1.2 Ω), 0-3 µs">
</Paintings>
