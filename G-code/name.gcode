; SHAPE 1 STARTS HERE

; INITIALIZATION : GENERAL
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

G21 ; set units : mm
G90 ; coordinates printing : absolute
M82 ; coordinates extrusion : absolute

; INITIALIZATION : PRINTING
M660 H2 Z0 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X20 Y20 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X0 Y0 E1 F120
G1 X5 Y0 E1 F120

M221 P2000 S2 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X7 Y0 E1 F120

M221 P3000 S3 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X9 Y0 E1 F120

M221 P4000 S4 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X11 Y0 E1 F120

M221 P5000 S5 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X13 Y0 E1 F120

M221 P6000 S6 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X15 Y0 E1 F120

M221 P7000 S7 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X17 Y0 E1 F120

M221 P8000 S8 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X19 Y0 E1 F120

M221 P9000 S9 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X21 Y0 E1 F120

M221 P10000 S10 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23 Y0 E1 F120

M221 P11000 S11 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y0 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program