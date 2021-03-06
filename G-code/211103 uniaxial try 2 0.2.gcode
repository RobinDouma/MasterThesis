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

M190 S51 ; bed : define temperature
M109 T12 S50 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F720
G1 X0 Y0 E1 F720
G1 X5 Y0 E1 F720
G1 X25 Y0 E1 F720

G1 X25 Y6 E1 F720

G1 X5 Y6 E1 F720

G1 X5 Y0.2 E1 F720

G1 X24.8 Y0.2 E1 F720

G1 X24.8 Y5.8 E1 F720

G1 X5.2 Y5.8 E1 F720

G1 X5.2 Y0.4 E1 F720

G1 X24.6 Y0.4 E1 F720

G1 X24.6 Y5.6 E1 F720

G1 X5.4 Y5.6 E1 F720

G1 X5.4 Y0.6 E1 F720

G1 X24.4 Y0.6 E1 F720

G1 X24.4 Y5.4 E1 F720

G1 X5.6 Y5.4 E1 F720

G1 X5.6 Y0.8 E1 F720

G1 X24.2 Y0.8 E1 F720

G1 X24.2 Y5.2 E1 F720

G1 X5.8 Y5.2 E1 F720

G1 X5.8 Y1 E1 F720

G1 X24 Y1 E1 F720

G1 X24 Y5 E1 F720

G1 X6 Y5 E1 F720

G1 X6 Y1.2 E1 F720

G1 X23.8 Y1.2 E1 F720

G1 X23.8 Y4.8 E1 F720

G1 X6.2 Y4.8 E1 F720

G1 X6.2 Y1.4 E1 F720

G1 X23.6 Y1.4 E1 F720

G1 X23.6 Y4.6 E1 F720

G1 X6.4 Y4.6 E1 F720

G1 X6.4 Y1.6 E1 F720

G1 X23.4 Y1.6 E1 F720

G1 X23.4 Y4.4 E1 F720

G1 X6.6 Y4.4 E1 F720

G1 X6.6 Y1.8 E1 F720

G1 X23.2 Y1.8 E1 F720

G1 X23.2 Y4.2 E1 F720

G1 X6.8 Y4.2 E1 F720

G1 X6.8 Y2 E1 F720

G1 X23 Y2 E1 F720

G1 X23 Y4 E1 F720

G1 X7 Y4 E1 F720

G1 X7 Y2.2 E1 F720

G1 X22.8 Y2.2 E1 F720

G1 X22.8 Y3.8 E1 F720

G1 X7.2 Y3.8 E1 F720

G1 X7.2 Y2.4 E1 F720

G1 X22.6 Y2.4 E1 F720

G1 X22.6 Y3.6 E1 F720

G1 X7.4 Y3.6 E1 F720

G1 X7.4 Y2.6 E1 F720

G1 X22.4 Y2.6 E1 F720

G1 X22.4 Y3.4 E1 F720

G1 X7.6 Y3.4 E1 F720

G1 X7.6 Y2.8 E1 F720

G1 X22.2 Y2.8 E1 F720

G1 X22.2 Y3.2 E1 F720

G1 X7.8 Y3.2 E1 F720

G1 X7.8 Y3 E1 F720

G1 X22.2 Y3 E1 F720

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S50 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F840
G1 X0 Y0 E1 F840
G1 X5 Y0 E1 F840
G1 X25 Y0 E1 F840

G1 X25 Y6 E1 F840

G1 X5 Y6 E1 F840

G1 X5 Y0.2 E1 F840

G1 X24.8 Y0.2 E1 F840

G1 X24.8 Y5.8 E1 F840

G1 X5.2 Y5.8 E1 F840

G1 X5.2 Y0.4 E1 F840

G1 X24.6 Y0.4 E1 F840

G1 X24.6 Y5.6 E1 F840

G1 X5.4 Y5.6 E1 F840

G1 X5.4 Y0.6 E1 F840

G1 X24.4 Y0.6 E1 F840

G1 X24.4 Y5.4 E1 F840

G1 X5.6 Y5.4 E1 F840

G1 X5.6 Y0.8 E1 F840

G1 X24.2 Y0.8 E1 F840

G1 X24.2 Y5.2 E1 F840

G1 X5.8 Y5.2 E1 F840

G1 X5.8 Y1 E1 F840

G1 X24 Y1 E1 F840

G1 X24 Y5 E1 F840

G1 X6 Y5 E1 F840

G1 X6 Y1.2 E1 F840

G1 X23.8 Y1.2 E1 F840

G1 X23.8 Y4.8 E1 F840

G1 X6.2 Y4.8 E1 F840

G1 X6.2 Y1.4 E1 F840

G1 X23.6 Y1.4 E1 F840

G1 X23.6 Y4.6 E1 F840

G1 X6.4 Y4.6 E1 F840

G1 X6.4 Y1.6 E1 F840

G1 X23.4 Y1.6 E1 F840

G1 X23.4 Y4.4 E1 F840

G1 X6.6 Y4.4 E1 F840

G1 X6.6 Y1.8 E1 F840

G1 X23.2 Y1.8 E1 F840

G1 X23.2 Y4.2 E1 F840

G1 X6.8 Y4.2 E1 F840

G1 X6.8 Y2 E1 F840

G1 X23 Y2 E1 F840

G1 X23 Y4 E1 F840

G1 X7 Y4 E1 F840

G1 X7 Y2.2 E1 F840

G1 X22.8 Y2.2 E1 F840

G1 X22.8 Y3.8 E1 F840

G1 X7.2 Y3.8 E1 F840

G1 X7.2 Y2.4 E1 F840

G1 X22.6 Y2.4 E1 F840

G1 X22.6 Y3.6 E1 F840

G1 X7.4 Y3.6 E1 F840

G1 X7.4 Y2.6 E1 F840

G1 X22.4 Y2.6 E1 F840

G1 X22.4 Y3.4 E1 F840

G1 X7.6 Y3.4 E1 F840

G1 X7.6 Y2.8 E1 F840

G1 X22.2 Y2.8 E1 F840

G1 X22.2 Y3.2 E1 F840

G1 X7.8 Y3.2 E1 F840

G1 X7.8 Y3 E1 F840

G1 X22.2 Y3 E1 F840

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S50 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F960
G1 X0 Y0 E1 F960
G1 X5 Y0 E1 F960
G1 X25 Y0 E1 F960

G1 X25 Y6 E1 F960

G1 X5 Y6 E1 F960

G1 X5 Y0.2 E1 F960

G1 X24.8 Y0.2 E1 F960

G1 X24.8 Y5.8 E1 F960

G1 X5.2 Y5.8 E1 F960

G1 X5.2 Y0.4 E1 F960

G1 X24.6 Y0.4 E1 F960

G1 X24.6 Y5.6 E1 F960

G1 X5.4 Y5.6 E1 F960

G1 X5.4 Y0.6 E1 F960

G1 X24.4 Y0.6 E1 F960

G1 X24.4 Y5.4 E1 F960

G1 X5.6 Y5.4 E1 F960

G1 X5.6 Y0.8 E1 F960

G1 X24.2 Y0.8 E1 F960

G1 X24.2 Y5.2 E1 F960

G1 X5.8 Y5.2 E1 F960

G1 X5.8 Y1 E1 F960

G1 X24 Y1 E1 F960

G1 X24 Y5 E1 F960

G1 X6 Y5 E1 F960

G1 X6 Y1.2 E1 F960

G1 X23.8 Y1.2 E1 F960

G1 X23.8 Y4.8 E1 F960

G1 X6.2 Y4.8 E1 F960

G1 X6.2 Y1.4 E1 F960

G1 X23.6 Y1.4 E1 F960

G1 X23.6 Y4.6 E1 F960

G1 X6.4 Y4.6 E1 F960

G1 X6.4 Y1.6 E1 F960

G1 X23.4 Y1.6 E1 F960

G1 X23.4 Y4.4 E1 F960

G1 X6.6 Y4.4 E1 F960

G1 X6.6 Y1.8 E1 F960

G1 X23.2 Y1.8 E1 F960

G1 X23.2 Y4.2 E1 F960

G1 X6.8 Y4.2 E1 F960

G1 X6.8 Y2 E1 F960

G1 X23 Y2 E1 F960

G1 X23 Y4 E1 F960

G1 X7 Y4 E1 F960

G1 X7 Y2.2 E1 F960

G1 X22.8 Y2.2 E1 F960

G1 X22.8 Y3.8 E1 F960

G1 X7.2 Y3.8 E1 F960

G1 X7.2 Y2.4 E1 F960

G1 X22.6 Y2.4 E1 F960

G1 X22.6 Y3.6 E1 F960

G1 X7.4 Y3.6 E1 F960

G1 X7.4 Y2.6 E1 F960

G1 X22.4 Y2.6 E1 F960

G1 X22.4 Y3.4 E1 F960

G1 X7.6 Y3.4 E1 F960

G1 X7.6 Y2.8 E1 F960

G1 X22.2 Y2.8 E1 F960

G1 X22.2 Y3.2 E1 F960

G1 X7.8 Y3.2 E1 F960

G1 X7.8 Y3 E1 F960

G1 X22.2 Y3 E1 F960

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S70 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F720
G1 X0 Y0 E1 F720
G1 X5 Y0 E1 F720
G1 X25 Y0 E1 F720

G1 X25 Y6 E1 F720

G1 X5 Y6 E1 F720

G1 X5 Y0.2 E1 F720

G1 X24.8 Y0.2 E1 F720

G1 X24.8 Y5.8 E1 F720

G1 X5.2 Y5.8 E1 F720

G1 X5.2 Y0.4 E1 F720

G1 X24.6 Y0.4 E1 F720

G1 X24.6 Y5.6 E1 F720

G1 X5.4 Y5.6 E1 F720

G1 X5.4 Y0.6 E1 F720

G1 X24.4 Y0.6 E1 F720

G1 X24.4 Y5.4 E1 F720

G1 X5.6 Y5.4 E1 F720

G1 X5.6 Y0.8 E1 F720

G1 X24.2 Y0.8 E1 F720

G1 X24.2 Y5.2 E1 F720

G1 X5.8 Y5.2 E1 F720

G1 X5.8 Y1 E1 F720

G1 X24 Y1 E1 F720

G1 X24 Y5 E1 F720

G1 X6 Y5 E1 F720

G1 X6 Y1.2 E1 F720

G1 X23.8 Y1.2 E1 F720

G1 X23.8 Y4.8 E1 F720

G1 X6.2 Y4.8 E1 F720

G1 X6.2 Y1.4 E1 F720

G1 X23.6 Y1.4 E1 F720

G1 X23.6 Y4.6 E1 F720

G1 X6.4 Y4.6 E1 F720

G1 X6.4 Y1.6 E1 F720

G1 X23.4 Y1.6 E1 F720

G1 X23.4 Y4.4 E1 F720

G1 X6.6 Y4.4 E1 F720

G1 X6.6 Y1.8 E1 F720

G1 X23.2 Y1.8 E1 F720

G1 X23.2 Y4.2 E1 F720

G1 X6.8 Y4.2 E1 F720

G1 X6.8 Y2 E1 F720

G1 X23 Y2 E1 F720

G1 X23 Y4 E1 F720

G1 X7 Y4 E1 F720

G1 X7 Y2.2 E1 F720

G1 X22.8 Y2.2 E1 F720

G1 X22.8 Y3.8 E1 F720

G1 X7.2 Y3.8 E1 F720

G1 X7.2 Y2.4 E1 F720

G1 X22.6 Y2.4 E1 F720

G1 X22.6 Y3.6 E1 F720

G1 X7.4 Y3.6 E1 F720

G1 X7.4 Y2.6 E1 F720

G1 X22.4 Y2.6 E1 F720

G1 X22.4 Y3.4 E1 F720

G1 X7.6 Y3.4 E1 F720

G1 X7.6 Y2.8 E1 F720

G1 X22.2 Y2.8 E1 F720

G1 X22.2 Y3.2 E1 F720

G1 X7.8 Y3.2 E1 F720

G1 X7.8 Y3 E1 F720

G1 X22.2 Y3 E1 F720

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S70 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F840
G1 X0 Y0 E1 F840
G1 X5 Y0 E1 F840
G1 X25 Y0 E1 F840

G1 X25 Y6 E1 F840

G1 X5 Y6 E1 F840

G1 X5 Y0.2 E1 F840

G1 X24.8 Y0.2 E1 F840

G1 X24.8 Y5.8 E1 F840

G1 X5.2 Y5.8 E1 F840

G1 X5.2 Y0.4 E1 F840

G1 X24.6 Y0.4 E1 F840

G1 X24.6 Y5.6 E1 F840

G1 X5.4 Y5.6 E1 F840

G1 X5.4 Y0.6 E1 F840

G1 X24.4 Y0.6 E1 F840

G1 X24.4 Y5.4 E1 F840

G1 X5.6 Y5.4 E1 F840

G1 X5.6 Y0.8 E1 F840

G1 X24.2 Y0.8 E1 F840

G1 X24.2 Y5.2 E1 F840

G1 X5.8 Y5.2 E1 F840

G1 X5.8 Y1 E1 F840

G1 X24 Y1 E1 F840

G1 X24 Y5 E1 F840

G1 X6 Y5 E1 F840

G1 X6 Y1.2 E1 F840

G1 X23.8 Y1.2 E1 F840

G1 X23.8 Y4.8 E1 F840

G1 X6.2 Y4.8 E1 F840

G1 X6.2 Y1.4 E1 F840

G1 X23.6 Y1.4 E1 F840

G1 X23.6 Y4.6 E1 F840

G1 X6.4 Y4.6 E1 F840

G1 X6.4 Y1.6 E1 F840

G1 X23.4 Y1.6 E1 F840

G1 X23.4 Y4.4 E1 F840

G1 X6.6 Y4.4 E1 F840

G1 X6.6 Y1.8 E1 F840

G1 X23.2 Y1.8 E1 F840

G1 X23.2 Y4.2 E1 F840

G1 X6.8 Y4.2 E1 F840

G1 X6.8 Y2 E1 F840

G1 X23 Y2 E1 F840

G1 X23 Y4 E1 F840

G1 X7 Y4 E1 F840

G1 X7 Y2.2 E1 F840

G1 X22.8 Y2.2 E1 F840

G1 X22.8 Y3.8 E1 F840

G1 X7.2 Y3.8 E1 F840

G1 X7.2 Y2.4 E1 F840

G1 X22.6 Y2.4 E1 F840

G1 X22.6 Y3.6 E1 F840

G1 X7.4 Y3.6 E1 F840

G1 X7.4 Y2.6 E1 F840

G1 X22.4 Y2.6 E1 F840

G1 X22.4 Y3.4 E1 F840

G1 X7.6 Y3.4 E1 F840

G1 X7.6 Y2.8 E1 F840

G1 X22.2 Y2.8 E1 F840

G1 X22.2 Y3.2 E1 F840

G1 X7.8 Y3.2 E1 F840

G1 X7.8 Y3 E1 F840

G1 X22.2 Y3 E1 F840

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 6 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S70 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F960
G1 X0 Y0 E1 F960
G1 X5 Y0 E1 F960
G1 X25 Y0 E1 F960

G1 X25 Y6 E1 F960

G1 X5 Y6 E1 F960

G1 X5 Y0.2 E1 F960

G1 X24.8 Y0.2 E1 F960

G1 X24.8 Y5.8 E1 F960

G1 X5.2 Y5.8 E1 F960

G1 X5.2 Y0.4 E1 F960

G1 X24.6 Y0.4 E1 F960

G1 X24.6 Y5.6 E1 F960

G1 X5.4 Y5.6 E1 F960

G1 X5.4 Y0.6 E1 F960

G1 X24.4 Y0.6 E1 F960

G1 X24.4 Y5.4 E1 F960

G1 X5.6 Y5.4 E1 F960

G1 X5.6 Y0.8 E1 F960

G1 X24.2 Y0.8 E1 F960

G1 X24.2 Y5.2 E1 F960

G1 X5.8 Y5.2 E1 F960

G1 X5.8 Y1 E1 F960

G1 X24 Y1 E1 F960

G1 X24 Y5 E1 F960

G1 X6 Y5 E1 F960

G1 X6 Y1.2 E1 F960

G1 X23.8 Y1.2 E1 F960

G1 X23.8 Y4.8 E1 F960

G1 X6.2 Y4.8 E1 F960

G1 X6.2 Y1.4 E1 F960

G1 X23.6 Y1.4 E1 F960

G1 X23.6 Y4.6 E1 F960

G1 X6.4 Y4.6 E1 F960

G1 X6.4 Y1.6 E1 F960

G1 X23.4 Y1.6 E1 F960

G1 X23.4 Y4.4 E1 F960

G1 X6.6 Y4.4 E1 F960

G1 X6.6 Y1.8 E1 F960

G1 X23.2 Y1.8 E1 F960

G1 X23.2 Y4.2 E1 F960

G1 X6.8 Y4.2 E1 F960

G1 X6.8 Y2 E1 F960

G1 X23 Y2 E1 F960

G1 X23 Y4 E1 F960

G1 X7 Y4 E1 F960

G1 X7 Y2.2 E1 F960

G1 X22.8 Y2.2 E1 F960

G1 X22.8 Y3.8 E1 F960

G1 X7.2 Y3.8 E1 F960

G1 X7.2 Y2.4 E1 F960

G1 X22.6 Y2.4 E1 F960

G1 X22.6 Y3.6 E1 F960

G1 X7.4 Y3.6 E1 F960

G1 X7.4 Y2.6 E1 F960

G1 X22.4 Y2.6 E1 F960

G1 X22.4 Y3.4 E1 F960

G1 X7.6 Y3.4 E1 F960

G1 X7.6 Y2.8 E1 F960

G1 X22.2 Y2.8 E1 F960

G1 X22.2 Y3.2 E1 F960

G1 X7.8 Y3.2 E1 F960

G1 X7.8 Y3 E1 F960

G1 X22.2 Y3 E1 F960

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program