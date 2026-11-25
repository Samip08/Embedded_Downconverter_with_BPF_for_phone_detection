<Qucs Schematic 26.1.1>
<Properties>
  <View=-757,-305,1315,1071,0.564474,228,168>
  <Grid=10,10,1>
  <DataSet=atennuator.dat>
  <DataDisplay=atennuator.dpl>
  <OpenDisplay=0>
  <Script=atennuator.m>
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
  <Pac P1 1 210 280 -111 -30 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 210 320 0 0 0 0>
  <Amp X2 1 320 210 -26 27 0 0 "5.623" 1 "50 Ohm" 0 "50 Ohm" 0 "1 dB" 0>
  <Attenuator X3 1 380 210 -57 -73 0 0 "12.6 dB" 1 "50 Ohm" 0 "16.85" 0>
  <Pac P2 1 450 280 31 -31 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 450 320 0 0 0 0>
  <.SP SP1 1 250 390 0 56 0 0 "lin" 1 "890 MHz" 1 "915 MHz" 1 "51" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 480 430 -28 18 0 0 "Gain_db=dB(S[2,1])" 1 "NF_db=10*log10(F)" 1 "yes" 0>
  <Attenuator X1 1 260 210 -57 -73 0 0 "7.2 dB" 1 "50 Ohm" 0 "16.85" 0>
</Components>
<Wires>
  <210 310 210 320 "" 0 0 0 "">
  <210 210 210 250 "" 0 0 0 "">
  <210 210 230 210 "" 0 0 0 "">
  <450 310 450 320 "" 0 0 0 "">
  <410 210 450 210 "" 0 0 0 "">
  <450 210 450 250 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 630 449 502 409 3 #c0c0c0 1 00 1 8.9e+08 5e+06 9.15e+08 1 -16.6013 10 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"Gain_db" #0000ff 0 3 0 0 0>
	  <Mkr 8.9e+08 20 -265 5 0 0>
	  <Mkr 9.025e+08 271 -265 5 0 0>
	  <Mkr 9.15e+08 322 -185 5 0 0>
  </Rect>
  <Rect 620 939 502 409 3 #c0c0c0 1 00 1 8.9e+08 2e+06 9.15e+08 1 -16.6013 2 0 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"NF_db" #0000ff 0 3 0 0 0>
	  <Mkr 8.9e+08 30 -275 5 0 0>
	  <Mkr 9.025e+08 271 -265 5 0 0>
	  <Mkr 9.15e+08 322 -185 5 0 0>
  </Rect>
  <Tab 190 810 300 200 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 51 315 0 225 1 0 0 "" "" "">
	<"Gain_db" #0000ff 0 5 1 0 0>
	<"NF_db" #0000ff 0 5 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
