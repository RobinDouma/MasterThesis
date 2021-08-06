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

M6 T12 O2 X0 Y0 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S65 ; bed : define temperature
M109 T12 S60 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P5000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X0 Y0 E1 F120
G1 X5 Y0 E1 F120

G3 I5 E1 F120

G1 X5.15 E1 F120
G3 I4.85 E1 F120

G1 X5.3 E1 F120
G3 I4.7 E1 F120

G1 X5.45 E1 F120
G3 I4.55 E1 F120

G1 X5.6 E1 F120
G3 I4.4 E1 F120

G1 X5.75 E1 F120
G3 I4.25 E1 F120

G1 X5.9 E1 F120
G3 I4.1 E1 F120

G1 X6.05 E1 F120
G3 I3.95 E1 F120

G1 X6.2 E1 F120
G3 I3.8 E1 F120

G1 X6.35 E1 F120
G3 I3.65 E1 F120

G1 X6.5 E1 F120
G3 I3.5 E1 F120

G1 X6.65 E1 F120
G3 I3.35 E1 F120

G1 X6.8 E1 F120
G3 I3.2 E1 F120

G1 X6.95 E1 F120
G3 I3.05 E1 F120

G1 X7.1 E1 F120
G3 I2.9 E1 F120

G1 X7.25 E1 F120
G3 I2.75 E1 F120

G1 X7.4 E1 F120
G3 I2.6 E1 F120

G1 X7.55 E1 F120
G3 I2.45 E1 F120

G1 X7.7 E1 F120
G3 I2.3 E1 F120

G1 X7.85 E1 F120
G3 I2.15 E1 F120

G1 X8 E1 F120
G3 I2 E1 F120

G1 X8.15 E1 F120
G3 I1.85 E1 F120

G1 X8.3 E1 F120
G3 I1.7 E1 F120

G1 X8.45 E1 F120
G3 I1.55 E1 F120

G1 X8.6 E1 F120
G3 I1.4 E1 F120

G1 X8.75 E1 F120
G3 I1.25 E1 F120

G1 X8.9 E1 F120
G3 I1.1 E1 F120

G1 X9.05 E1 F120
G3 I0.95 E1 F120

G1 X9.2 E1 F120
G3 I0.8 E1 F120

G1 X9.35 E1 F120
G3 I0.65 E1 F120

G1 X9.5 E1 F120
G3 I0.5 E1 F120

G1 X9.65 E1 F120
G3 I0.35 E1 F120

G1 X9.8 E1 F120
G3 I0.2 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program