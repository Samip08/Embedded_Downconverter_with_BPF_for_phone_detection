<Qucs Schematic 26.1.1>
<Properties>
  <View=-1927,-432,2114,1547,0.826446,1558,859>
  <Grid=10,10,1>
  <DataSet=Task_eight_schematic.dat>
  <DataDisplay=Task_eight_schematic.dpl>
  <OpenDisplay=0>
  <Script=Task_eight_schematic.m>
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
  <Pac P1 1 -40 200 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 -40 230 0 0 0 0>
  <MOPEN MS2 1 -40 60 -12 15 1 2 "Sub1" 1 "1.659m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS3 1 80 0 -26 -81 1 0 "Sub1" 1 "1.659m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS4 1 170 90 -26 37 0 0 "Sub1" 1 "1.775m" 1 "49.4m" 1 "2.659m" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MOPEN MS5 1 110 120 -12 15 1 2 "Sub1" 1 "1.775m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS7 1 320 150 -26 37 0 0 "Sub1" 1 "1.777m" 1 "49.39m" 1 "3.292m" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MOPEN MS8 1 260 180 -12 15 1 2 "Sub1" 1 "1.777m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS9 1 380 120 -26 -81 1 0 "Sub1" 1 "1.777m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS10 1 470 210 -26 37 0 0 "Sub1" 1 "1.777m" 1 "49.39m" 1 "3.292m" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MOPEN MS11 1 410 240 -12 15 1 2 "Sub1" 1 "1.777m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS12 1 530 180 -26 -81 1 0 "Sub1" 1 "1.777m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS13 1 620 270 -26 37 0 0 "Sub1" 1 "1.775m" 1 "49.4m" 1 "2.659m" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MOPEN MS14 1 560 300 -12 15 1 2 "Sub1" 1 "1.775m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS15 1 680 240 -26 -81 1 0 "Sub1" 1 "1.775m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS16 1 770 330 -26 37 0 0 "Sub1" 1 "1.659m" 1 "50.03m" 1 "440.5u" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MOPEN MS17 1 710 360 -12 15 1 2 "Sub1" 1 "1.659m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS18 1 830 300 -26 -81 1 0 "Sub1" 1 "1.659m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <Pac P2 1 850 420 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 850 450 0 0 0 0>
  <SUBST Sub1 1 210 320 -30 24 0 0 "3.55" 1 "813um" 1 "35um" 1 "0.0027" 1 "1.72e-8" 1 "0" 1>
  <.SP SP1 1 -30 280 0 56 0 0 "lin" 1 "700MHz" 1 "2000MHz" 1 "1301" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <MCOUPLED MS1 1 20 30 -26 37 0 0 "Sub1" 1 "1.659m" 1 "50.03m" 1 "440.5u" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MOPEN MS6 1 230 60 -26 -81 1 0 "Sub1" 1 "1.775m" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <Eqn Eqn2 1 330 500 -28 18 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "IL_dB=-max(S21_dB)" 1 "Rej_dB=max(S21_dB)-S21_dB" 1 "yes" 0>
</Components>
<Wires>
  <-40 0 -40 170 "" 0 0 0 "">
  <-40 0 -10 0 "" 0 0 0 "">
  <850 360 850 390 "" 0 0 0 "">
  <800 360 850 360 "" 0 0 0 "">
  <50 60 140 60 "" 0 0 0 "">
  <200 120 290 120 "" 0 0 0 "">
  <350 180 440 180 "" 0 0 0 "">
  <500 240 590 240 "" 0 0 0 "">
  <650 300 740 300 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -450 979 430 361 3 #c0c0c0 1 00 0 8.5e+08 2e+08 9.5e+08 1 -154.155 100 36.1553 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S21_dB" #0000ff 1 3 0 0 0>
	  <Mkr 8.9e+08 -27 -363 5 0 0>
	  <Mkr 9.03e+08 271 -392 5 0 0>
	  <Mkr 9.15e+08 320 -324 5 0 0>
  </Rect>
  <Rect 80 970 424 325 3 #c0c0c0 1 00 0 8.5e+08 2e+08 9.5e+08 1 -154.155 100 36.1553 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	  <Mkr 8.9e+08 149 -351 5 0 0>
	  <Mkr 9.03e+08 251 -177 5 0 0>
	  <Mkr 9.15e+08 353 -327 5 0 0>
  </Rect>
  <Rect -440 1404 430 324 3 #c0c0c0 1 00 0 7e+08 2e+08 2e+09 1 -154.155 100 36.1553 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S21_dB" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 90 1413 428 323 3 #c0c0c0 1 00 0 7e+08 2e+08 1e+09 1 -154.155 100 36.1553 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"Rej_dB" #0000ff 0 3 0 0 0>
	  <Mkr 8.25e+08 213 -277 5 0 0>
	  <Mkr 8.5e+08 268 -174 5 0 0>
  </Rect>
  <Tab 590 1070 300 200 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"IL_dB" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text -30 470 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 890MHz...915MHz \n Impedance matching 50 Ohm">
</Paintings>
