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

M190 S50 ; bed : define temperature
M109 T12 S60 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P1000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G3 I7.5 E1 F120

G1 X5.25 E1 F120
G3 I7.25 E1 F120

G1 X5.5 E1 F120
G3 I7 E1 F120

G1 X5.75 E1 F120
G3 I6.75 E1 F120

G1 X6 E1 F120
G3 I6.5 E1 F120

G1 X6.25 E1 F120
G3 I6.25 E1 F120

G1 X6.5 E1 F120
G3 I6 E1 F120

G1 X6.75 E1 F120
G3 I5.75 E1 F120

G1 X7 E1 F120
G3 I5.5 E1 F120

G1 X7.25 E1 F120
G3 I5.25 E1 F120

G1 X7.5 E1 F120
G3 I5 E1 F120

G1 X7.75 E1 F120
G3 I4.75 E1 F120

G1 X8 E1 F120
G3 I4.5 E1 F120

G1 X8.25 E1 F120
G3 I4.25 E1 F120

G1 X8.5 E1 F120
G3 I4 E1 F120

G1 X8.75 E1 F120
G3 I3.75 E1 F120

G1 X9 E1 F120
G3 I3.5 E1 F120

G1 X9.25 E1 F120
G3 I3.25 E1 F120

G1 X9.5 E1 F120
G3 I3 E1 F120

G1 X9.75 E1 F120
G3 I2.75 E1 F120

G1 X10 E1 F120
G3 I2.5 E1 F120

G1 X10.25 E1 F120
G3 I2.25 E1 F120

G1 X10.5 E1 F120
G3 I2 E1 F120

G1 X10.75 E1 F120
G3 I1.75 E1 F120

G1 X11 E1 F120
G3 I1.5 E1 F120

G1 X11.25 E1 F120
G3 I1.25 E1 F120

G1 X11.5 E1 F120
G3 I1 E1 F120

G1 X11.75 E1 F120
G3 I0.75 E1 F120

G1 X12 E1 F120
G3 I0.5 E1 F120

G1 X12.25 E1 F120
G3 I0.25 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program