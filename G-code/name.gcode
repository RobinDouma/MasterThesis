; SHAPE 1 STARTS HERE

; INITIALIZATION : GENERAL
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

G21 ; set units : mm
G90 ; coordinates printing : absolute
M82 ; coordinates extrusion : absolute

; INITIALIZATION : PRINTING
M660 H2 Z60 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X40 Y50 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

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
G1 X25 Y0 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y20 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5 Y20 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5 Y0.2 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.8 Y0.2 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.8 Y19.8 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.2 Y19.8 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.2 Y0.4 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.6 Y0.4 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.6 Y19.6 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.4 Y19.6 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.4 Y0.6 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.4 Y0.6 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.4 Y19.4 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.6 Y19.4 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.6 Y0.8 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.2 Y0.8 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.2 Y19.2 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.8 Y19.2 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.8 Y1 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24 Y1 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24 Y19 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6 Y19 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6 Y1.2 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.8 Y1.2 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.8 Y18.8 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.2 Y18.8 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.2 Y1.4 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.6 Y1.4 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.6 Y18.6 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.4 Y18.6 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.4 Y1.6 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.4 Y1.6 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.4 Y18.4 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.6 Y18.4 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.6 Y1.8 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.2 Y1.8 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.2 Y18.2 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.8 Y18.2 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.8 Y2 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X15 Y10 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X30 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P1200000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F120
G1 X30 Y0 E1 F120
G1 X35 Y0 E1 F120
G1 X55 Y0 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X55 Y20 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35 Y20 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35 Y0.2 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.8 Y0.2 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.8 Y19.8 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.2 Y19.8 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.2 Y0.4 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.6 Y0.4 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.6 Y19.6 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.4 Y19.6 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.4 Y0.6 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.4 Y0.6 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.4 Y19.4 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.6 Y19.4 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.6 Y0.8 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.2 Y0.8 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54.2 Y19.2 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.8 Y19.2 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.8 Y1 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54 Y1 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X54 Y19 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36 Y19 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36 Y1.2 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.8 Y1.2 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.8 Y18.8 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.2 Y18.8 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.2 Y1.4 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.6 Y1.4 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.6 Y18.6 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.4 Y18.6 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.4 Y1.6 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.4 Y1.6 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.4 Y18.4 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.6 Y18.4 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.6 Y1.8 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.2 Y1.8 E1 F120
M221 P3000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X53.2 Y18.2 E1 F360
M221 P5000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.8 Y18.2 E1 F600
M221 P7000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.8 Y2 E1 F840
M221 P1000 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X45 Y10 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program