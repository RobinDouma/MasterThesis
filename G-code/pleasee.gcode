; INITIALIZATION : GENERAL
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

G21 ; set units : mm
G90 ; coordinates printing : absolute
M82 ; coordinates extrusion : absolute

; INITIALIZATION : PRINTING
M660 H2 Z0 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X0 Y0 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F120
G1 X0 Y0 E1 F120
G1 X5 Y0 E1 F120
G1 X85 Y0 E1 F120
G1 X85 Y40 E1 F360
G1 X5 Y40 E1 F600
G1 X5 Y0.9 E1 F840
G1 X84.1 Y0.9 E1 F120
G1 X84.1 Y39.1 E1 F360
G1 X5.9 Y39.1 E1 F600
G1 X5.9 Y1.8 E1 F840
G1 X83.2 Y1.8 E1 F120
G1 X83.2 Y38.2 E1 F360
G1 X6.8 Y38.2 E1 F600
G1 X6.8 Y2.7 E1 F840
G1 X82.3 Y2.7 E1 F120
G1 X82.3 Y37.3 E1 F360
G1 X7.7 Y37.3 E1 F600
G1 X7.7 Y3.6 E1 F840
G1 X81.4 Y3.6 E1 F120
G1 X81.4 Y36.4 E1 F360
G1 X8.6 Y36.4 E1 F600
G1 X8.6 Y4.5 E1 F840
G1 X80.5 Y4.5 E1 F120
G1 X80.5 Y35.5 E1 F360
G1 X9.5 Y35.5 E1 F600
G1 X9.5 Y5.4 E1 F840
G1 X79.6 Y5.4 E1 F120
G1 X79.6 Y34.6 E1 F360
G1 X10.4 Y34.6 E1 F600
G1 X10.4 Y6.3 E1 F840
G1 X78.7 Y6.3 E1 F120
G1 X78.7 Y33.7 E1 F360
G1 X11.3 Y33.7 E1 F600
G1 X11.3 Y7.2 E1 F840
G1 X77.8 Y7.2 E1 F120
G1 X77.8 Y32.8 E1 F360
G1 X12.2 Y32.8 E1 F600
G1 X12.2 Y8.1 E1 F840
G1 X76.9 Y8.1 E1 F120
G1 X76.9 Y31.9 E1 F360
G1 X13.1 Y31.9 E1 F600
G1 X13.1 Y9 E1 F840
G1 X45 Y20 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F120
G1 X0 Y45 E1 F120
G1 X5 Y45 E1 F120
G1 X45 Y45 E1 F120
G1 X45 Y85 E1 F120
G1 X5 Y85 E1 F120
G1 X5 Y45.8 E1 F120
G1 X44.2 Y45.8 E1 F120
G1 X44.2 Y84.2 E1 F120
G1 X5.8 Y84.2 E1 F120
G1 X5.8 Y46.6 E1 F120
G1 X43.4 Y46.6 E1 F120
G1 X43.4 Y83.4 E1 F120
G1 X6.6 Y83.4 E1 F120
G1 X6.6 Y47.4 E1 F120
G1 X42.6 Y47.4 E1 F120
G1 X42.6 Y82.6 E1 F120
G1 X7.4 Y82.6 E1 F120
G1 X7.4 Y48.2 E1 F120
G1 X41.8 Y48.2 E1 F120
G1 X41.8 Y81.8 E1 F120
G1 X8.2 Y81.8 E1 F120
G1 X8.2 Y49 E1 F120
G1 X41 Y49 E1 F120
G1 X41 Y81 E1 F120
G1 X9 Y81 E1 F120
G1 X9 Y49.8 E1 F120
G1 X40.2 Y49.8 E1 F120
G1 X40.2 Y80.2 E1 F120
G1 X9.8 Y80.2 E1 F120
G1 X9.8 Y50.6 E1 F120
G1 X39.4 Y50.6 E1 F120
G1 X39.4 Y79.4 E1 F120
G1 X10.6 Y79.4 E1 F120
G1 X10.6 Y51.4 E1 F120
G1 X38.6 Y51.4 E1 F120
G1 X38.6 Y78.6 E1 F120
G1 X11.4 Y78.6 E1 F120
G1 X11.4 Y52.2 E1 F120
G1 X37.8 Y52.2 E1 F120
G1 X37.8 Y77.8 E1 F120
G1 X12.2 Y77.8 E1 F120
G1 X12.2 Y53 E1 F120
G1 X37 Y53 E1 F120
G1 X37 Y77 E1 F120
G1 X13 Y77 E1 F120
G1 X13 Y53.8 E1 F120
G1 X36.2 Y53.8 E1 F120
G1 X36.2 Y76.2 E1 F120
G1 X13.8 Y76.2 E1 F120
G1 X13.8 Y54.6 E1 F120
G1 X35.4 Y54.6 E1 F120
G1 X35.4 Y75.4 E1 F120
G1 X14.6 Y75.4 E1 F120
G1 X14.6 Y55.4 E1 F120
G1 X34.6 Y55.4 E1 F120
G1 X34.6 Y74.6 E1 F120
G1 X15.4 Y74.6 E1 F120
G1 X15.4 Y56.2 E1 F120
G1 X33.8 Y56.2 E1 F120
G1 X33.8 Y73.8 E1 F120
G1 X16.2 Y73.8 E1 F120
G1 X16.2 Y57 E1 F120
G1 X25 Y65 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.2 E1 F120
G1 X45 Y45 E1 F120
G1 X50 Y45 E1 F120
G1 X90 Y45 E1 F120
G1 X90 Y105 E1 F360
G1 X50 Y105 E1 F600
G1 X50 Y45.5 E1 F840
G1 X89.5 Y45.5 E1 F240
G1 X89.5 Y104.5 E1 F720
G1 X50.5 Y104.5 E1 F1200
G1 X50.5 Y46 E1 F1680
G1 X89 Y46 E1 F480
G1 X89 Y104 E1 F1440
G1 X51 Y104 E1 F2400
G1 X51 Y46.5 E1 F3360
G1 X88.5 Y46.5 E1 F960
G1 X88.5 Y103.5 E1 F2880
G1 X51.5 Y103.5 E1 F4800
G1 X51.5 Y47 E1 F6720
G1 X88 Y47 E1 F1920
G1 X88 Y103 E1 F5760
G1 X52 Y103 E1 F9600
G1 X52 Y47.5 E1 F13440
G1 X87.5 Y47.5 E1 F3840
G1 X87.5 Y102.5 E1 F11520
G1 X52.5 Y102.5 E1 F19200
G1 X52.5 Y48 E1 F26880
G1 X87 Y48 E1 F7680
G1 X87 Y102 E1 F23040
G1 X53 Y102 E1 F38400
G1 X53 Y48.5 E1 F53760
G1 X86.5 Y48.5 E1 F15360
G1 X86.5 Y101.5 E1 F46080
G1 X53.5 Y101.5 E1 F76800
G1 X53.5 Y49 E1 F107520
G1 X86 Y49 E1 F30720
G1 X86 Y101 E1 F92160
G1 X54 Y101 E1 F153600
G1 X54 Y49.5 E1 F215040
G1 X85.5 Y49.5 E1 F61440
G1 X85.5 Y100.5 E1 F184320
G1 X54.5 Y100.5 E1 F307200
G1 X54.5 Y50 E1 F430080
G1 X70 Y75 E1 F122880

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program