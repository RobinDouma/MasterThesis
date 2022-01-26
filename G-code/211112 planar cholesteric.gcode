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

M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F60
G1 X0 Y0 E1 F60
G1 X5 Y0 E1 F60
G1 X30 Y0 E1 F60

G1 X30 Y4 E1 F60

G1 X5 Y4 E1 F60

G1 X5 Y0.25 E1 F60

G1 X29.75 Y0.25 E1 F60

G1 X29.75 Y3.75 E1 F60

G1 X5.25 Y3.75 E1 F60

G1 X5.25 Y0.5 E1 F60

G1 X29.5 Y0.5 E1 F60

G1 X29.5 Y3.5 E1 F60

G1 X5.5 Y3.5 E1 F60

G1 X5.5 Y0.75 E1 F60

G1 X29.25 Y0.75 E1 F60

G1 X29.25 Y3.25 E1 F60

G1 X5.75 Y3.25 E1 F60

G1 X5.75 Y1 E1 F60

G1 X29 Y1 E1 F60

G1 X29 Y3 E1 F60

G1 X6 Y3 E1 F60

G1 X6 Y1.25 E1 F60

G1 X28.75 Y1.25 E1 F60

G1 X28.75 Y2.75 E1 F60

G1 X6.25 Y2.75 E1 F60

G1 X6.25 Y1.5 E1 F60

G1 X28.5 Y1.5 E1 F60

G1 X28.5 Y2.5 E1 F60

G1 X6.5 Y2.5 E1 F60

G1 X6.5 Y1.75 E1 F60

G1 X28.25 Y1.75 E1 F60

G1 X28.25 Y2.25 E1 F60

G1 X6.75 Y2.25 E1 F60

G1 X6.75 Y2 E1 F60

G1 X28.25 Y2 E1 F60

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F60
G1 X0 Y0 E1 F60
G1 X5 Y0 E1 F60
G1 X30 Y0 E1 F60

G1 X30 Y6 E1 F60

G1 X5 Y6 E1 F60

G1 X5 Y0.25 E1 F60

G1 X29.75 Y0.25 E1 F60

G1 X29.75 Y5.75 E1 F60

G1 X5.25 Y5.75 E1 F60

G1 X5.25 Y0.5 E1 F60

G1 X29.5 Y0.5 E1 F60

G1 X29.5 Y5.5 E1 F60

G1 X5.5 Y5.5 E1 F60

G1 X5.5 Y0.75 E1 F60

G1 X29.25 Y0.75 E1 F60

G1 X29.25 Y5.25 E1 F60

G1 X5.75 Y5.25 E1 F60

G1 X5.75 Y1 E1 F60

G1 X29 Y1 E1 F60

G1 X29 Y5 E1 F60

G1 X6 Y5 E1 F60

G1 X6 Y1.25 E1 F60

G1 X28.75 Y1.25 E1 F60

G1 X28.75 Y4.75 E1 F60

G1 X6.25 Y4.75 E1 F60

G1 X6.25 Y1.5 E1 F60

G1 X28.5 Y1.5 E1 F60

G1 X28.5 Y4.5 E1 F60

G1 X6.5 Y4.5 E1 F60

G1 X6.5 Y1.75 E1 F60

G1 X28.25 Y1.75 E1 F60

G1 X28.25 Y4.25 E1 F60

G1 X6.75 Y4.25 E1 F60

G1 X6.75 Y2 E1 F60

G1 X28 Y2 E1 F60

G1 X28 Y4 E1 F60

G1 X7 Y4 E1 F60

G1 X7 Y2.25 E1 F60

G1 X27.75 Y2.25 E1 F60

G1 X27.75 Y3.75 E1 F60

G1 X7.25 Y3.75 E1 F60

G1 X7.25 Y2.5 E1 F60

G1 X27.5 Y2.5 E1 F60

G1 X27.5 Y3.5 E1 F60

G1 X7.5 Y3.5 E1 F60

G1 X7.5 Y2.75 E1 F60

G1 X27.25 Y2.75 E1 F60

G1 X27.25 Y3.25 E1 F60

G1 X7.75 Y3.25 E1 F60

G1 X7.75 Y3 E1 F60

G1 X27.25 Y3 E1 F60

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F60
G1 X0 Y0 E1 F60
G1 X5 Y0 E1 F60
G1 X30 Y0 E1 F60

G1 X30 Y10 E1 F60

G1 X5 Y10 E1 F60

G1 X5 Y0.25 E1 F60

G1 X29.75 Y0.25 E1 F60

G1 X29.75 Y9.75 E1 F60

G1 X5.25 Y9.75 E1 F60

G1 X5.25 Y0.5 E1 F60

G1 X29.5 Y0.5 E1 F60

G1 X29.5 Y9.5 E1 F60

G1 X5.5 Y9.5 E1 F60

G1 X5.5 Y0.75 E1 F60

G1 X29.25 Y0.75 E1 F60

G1 X29.25 Y9.25 E1 F60

G1 X5.75 Y9.25 E1 F60

G1 X5.75 Y1 E1 F60

G1 X29 Y1 E1 F60

G1 X29 Y9 E1 F60

G1 X6 Y9 E1 F60

G1 X6 Y1.25 E1 F60

G1 X28.75 Y1.25 E1 F60

G1 X28.75 Y8.75 E1 F60

G1 X6.25 Y8.75 E1 F60

G1 X6.25 Y1.5 E1 F60

G1 X28.5 Y1.5 E1 F60

G1 X28.5 Y8.5 E1 F60

G1 X6.5 Y8.5 E1 F60

G1 X6.5 Y1.75 E1 F60

G1 X28.25 Y1.75 E1 F60

G1 X28.25 Y8.25 E1 F60

G1 X6.75 Y8.25 E1 F60

G1 X6.75 Y2 E1 F60

G1 X28 Y2 E1 F60

G1 X28 Y8 E1 F60

G1 X7 Y8 E1 F60

G1 X7 Y2.25 E1 F60

G1 X27.75 Y2.25 E1 F60

G1 X27.75 Y7.75 E1 F60

G1 X7.25 Y7.75 E1 F60

G1 X7.25 Y2.5 E1 F60

G1 X27.5 Y2.5 E1 F60

G1 X27.5 Y7.5 E1 F60

G1 X7.5 Y7.5 E1 F60

G1 X7.5 Y2.75 E1 F60

G1 X27.25 Y2.75 E1 F60

G1 X27.25 Y7.25 E1 F60

G1 X7.75 Y7.25 E1 F60

G1 X7.75 Y3 E1 F60

G1 X27 Y3 E1 F60

G1 X27 Y7 E1 F60

G1 X8 Y7 E1 F60

G1 X8 Y3.25 E1 F60

G1 X26.75 Y3.25 E1 F60

G1 X26.75 Y6.75 E1 F60

G1 X8.25 Y6.75 E1 F60

G1 X8.25 Y3.5 E1 F60

G1 X26.5 Y3.5 E1 F60

G1 X26.5 Y6.5 E1 F60

G1 X8.5 Y6.5 E1 F60

G1 X8.5 Y3.75 E1 F60

G1 X26.25 Y3.75 E1 F60

G1 X26.25 Y6.25 E1 F60

G1 X8.75 Y6.25 E1 F60

G1 X8.75 Y4 E1 F60

G1 X26 Y4 E1 F60

G1 X26 Y6 E1 F60

G1 X9 Y6 E1 F60

G1 X9 Y4.25 E1 F60

G1 X25.75 Y4.25 E1 F60

G1 X25.75 Y5.75 E1 F60

G1 X9.25 Y5.75 E1 F60

G1 X9.25 Y4.5 E1 F60

G1 X25.5 Y4.5 E1 F60

G1 X25.5 Y5.5 E1 F60

G1 X9.5 Y5.5 E1 F60

G1 X9.5 Y4.75 E1 F60

G1 X25.25 Y4.75 E1 F60

G1 X25.25 Y5.25 E1 F60

G1 X9.75 Y5.25 E1 F60

G1 X9.75 Y5 E1 F60

G1 X25.25 Y5 E1 F60

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program