<Qucs Schematic 26.1.1>
<Properties>
  <View=136,-119,1707,876,0.598077,7,0>
  <Grid=10,10,1>
  <DataSet=Filter1.dat>
  <DataDisplay=Filter1.dpl>
  <OpenDisplay=0>
  <Script=Filter1.m>
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
  <Pac P1 1 190 320 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Pac P2 1 390 320 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 190 350 0 0 0 0>
  <GND * 1 390 350 0 0 0 0>
  <C C1 1 350 210 -26 17 0 0 "12.63 pF" 1 "" 0 "neutral" 0>
  <L L1 1 230 210 -26 10 0 0 "1.989 uH" 1 "" 0>
  <.SP SP1 1 500 220 0 56 0 0 "lin" 1 "1 MHz" 1 "2 GHz" 1 "4000" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 220 430 -28 18 0 0 "S21_dB=dB(S[2,1])" 1 "IL_dB=-S21_dB" 1 "yes" 0>
</Components>
<Wires>
  <260 210 320 210 "" 0 0 0 "">
  <380 210 390 210 "" 0 0 0 "">
  <390 210 390 290 "" 0 0 0 "">
  <190 210 200 210 "" 0 0 0 "">
  <190 210 190 290 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 630 150 319 163 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"IL_dB" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1020 152 634 162 3 #c0c0c0 1 00 0 0 1e+08 1e+08 1 -52.7487 20 4.77872 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S21_dB@frequency" #0000ff 1 3 0 0 0>
  </Rect>
  <Tab 640 777 315 567 3 #c0c0c0 1 00 1 53 1 1 1 0 1 1 1 0 1 4000 315 0 225 1 0 0 "" "" "">
	<"IL_dB@frequency" #0000ff 0 6 1 0 0>
  </Tab>
  <Tab 1020 775 302 575 3 #c0c0c0 1 00 1 50 1 1 1 0 1 1 1 0 1 4000 315 0 225 1 0 0 "" "" "">
	<"S21_dB" #0000ff 0 4 1 0 0>
  </Tab>
  <Tab 1350 481 305 281 3 #c0c0c0 1 00 1 196 1 1 1 0 1 1 1 0 1 4000 315 0 225 1 0 0 "" "" "">
	<"S21_dB" #0000ff 0 5 1 0 0>
  </Tab>
  <Tab 1350 770 305 271 3 #c0c0c0 1 00 1 3260 1 1 1 0 1 1 1 0 1 4000 315 0 225 1 0 0 "" "" "">
	<"S21_dB" #0000ff 0 5 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 210 570 12 #ff0000 0 "Filter A schematic (series L-C between 50 Ω ports)">
  <Text 1130 -40 12 #ff0000 0 "Filter A S21 in dB, 0-100 MHz">
  <Text 710 -40 12 #ff0000 0 "Filter A insertion loss, 0-2 GHz">
  <Text 680 780 12 #ff0000 0 "Insertion loss, 27.5-38 MHz">
  <Text 1080 780 12 #ff0000 0 "S21, 26-38.5 MHz">
  <Text 1430 170 12 #ff0000 0 "S21 around 100 MHz">
  <Text 1420 770 12 #ff0000 0 "S21 around 1632 MHz">
</Paintings>
