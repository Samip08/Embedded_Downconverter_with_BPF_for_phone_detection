<Qucs Schematic 26.1.1>
<Properties>
  <View=0,0,933,595,1,0,0>
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
  <Attenuator X1 1 260 210 -57 -73 0 0 "10.7 dB" 1 "50 Ohm" 0 "16.85" 0>
  <Amp X2 1 320 210 -26 27 0 0 "5.623" 1 "50 Ohm" 0 "50 Ohm" 0 "1 dB" 0>
  <Attenuator X3 1 380 210 -57 -73 0 0 "12.6 dB" 1 "50 Ohm" 0 "16.85" 0>
  <Pac P2 1 450 280 31 -31 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 450 320 0 0 0 0>
  <.SP SP1 1 250 390 0 56 0 0 "lin" 1 "890 MHz" 1 "915 MHz" 1 "51" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 480 430 -28 18 0 0 "Gain_db=dB(S[2,1])" 1 "NF_db=10*log10(F)" 1 "yes" 0>
</Components>
<Wires>
  <210 320 210 310 "" 0 0 0 "">
  <210 250 210 210 "" 0 0 0 "">
  <210 210 230 210 "" 0 0 0 "">
  <450 310 450 320 "" 0 0 0 "">
  <410 210 450 210 "" 0 0 0 "">
  <450 210 450 250 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
