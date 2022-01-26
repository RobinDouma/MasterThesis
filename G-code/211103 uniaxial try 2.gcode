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
M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5 Y0.15 E1 F720

G1 X24.85 Y0.15 E1 F720

G1 X24.85 Y5.85 E1 F720

G1 X5.15 Y5.85 E1 F720

G1 X5.15 Y0.3 E1 F720

G1 X24.7 Y0.3 E1 F720

G1 X24.7 Y5.7 E1 F720

G1 X5.3 Y5.7 E1 F720

G1 X5.3 Y0.45 E1 F720

G1 X24.55 Y0.45 E1 F720

G1 X24.55 Y5.55 E1 F720

G1 X5.45 Y5.55 E1 F720

G1 X5.45 Y0.6 E1 F720

G1 X24.4 Y0.6 E1 F720

G1 X24.4 Y5.4 E1 F720

G1 X5.6 Y5.4 E1 F720

G1 X5.6 Y0.75 E1 F720

G1 X24.25 Y0.75 E1 F720

G1 X24.25 Y5.25 E1 F720

G1 X5.75 Y5.25 E1 F720

G1 X5.75 Y0.9 E1 F720

G1 X24.1 Y0.9 E1 F720

G1 X24.1 Y5.1 E1 F720

G1 X5.9 Y5.1 E1 F720

G1 X5.9 Y1.05 E1 F720

G1 X23.95 Y1.05 E1 F720

G1 X23.95 Y4.95 E1 F720

G1 X6.05 Y4.95 E1 F720

G1 X6.05 Y1.2 E1 F720

G1 X23.8 Y1.2 E1 F720

G1 X23.8 Y4.8 E1 F720

G1 X6.2 Y4.8 E1 F720

G1 X6.2 Y1.35 E1 F720

G1 X23.65 Y1.35 E1 F720

G1 X23.65 Y4.65 E1 F720

G1 X6.35 Y4.65 E1 F720

G1 X6.35 Y1.5 E1 F720

G1 X23.5 Y1.5 E1 F720

G1 X23.5 Y4.5 E1 F720

G1 X6.5 Y4.5 E1 F720

G1 X6.5 Y1.65 E1 F720

G1 X23.35 Y1.65 E1 F720

G1 X23.35 Y4.35 E1 F720

G1 X6.65 Y4.35 E1 F720

G1 X6.65 Y1.8 E1 F720

G1 X23.2 Y1.8 E1 F720

G1 X23.2 Y4.2 E1 F720

G1 X6.8 Y4.2 E1 F720

G1 X6.8 Y1.95 E1 F720

G1 X23.05 Y1.95 E1 F720

G1 X23.05 Y4.05 E1 F720

G1 X6.95 Y4.05 E1 F720

G1 X6.95 Y2.1 E1 F720

G1 X22.9 Y2.1 E1 F720

G1 X22.9 Y3.9 E1 F720

G1 X7.1 Y3.9 E1 F720

G1 X7.1 Y2.25 E1 F720

G1 X22.75 Y2.25 E1 F720

G1 X22.75 Y3.75 E1 F720

G1 X7.25 Y3.75 E1 F720

G1 X7.25 Y2.4 E1 F720

G1 X22.6 Y2.4 E1 F720

G1 X22.6 Y3.6 E1 F720

G1 X7.4 Y3.6 E1 F720

G1 X7.4 Y2.55 E1 F720

G1 X22.45 Y2.55 E1 F720

G1 X22.45 Y3.45 E1 F720

G1 X7.55 Y3.45 E1 F720

G1 X7.55 Y2.7 E1 F720

G1 X22.3 Y2.7 E1 F720

G1 X22.3 Y3.3 E1 F720

G1 X7.7 Y3.3 E1 F720

G1 X7.7 Y2.85 E1 F720

G1 X22.15 Y2.85 E1 F720

G1 X22.15 Y3.15 E1 F720

G1 X7.85 Y3.15 E1 F720

G1 X7.85 Y3 E1 F720

G1 X22.15 Y3 E1 F720

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S50 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5 Y0.15 E1 F840

G1 X24.85 Y0.15 E1 F840

G1 X24.85 Y5.85 E1 F840

G1 X5.15 Y5.85 E1 F840

G1 X5.15 Y0.3 E1 F840

G1 X24.7 Y0.3 E1 F840

G1 X24.7 Y5.7 E1 F840

G1 X5.3 Y5.7 E1 F840

G1 X5.3 Y0.45 E1 F840

G1 X24.55 Y0.45 E1 F840

G1 X24.55 Y5.55 E1 F840

G1 X5.45 Y5.55 E1 F840

G1 X5.45 Y0.6 E1 F840

G1 X24.4 Y0.6 E1 F840

G1 X24.4 Y5.4 E1 F840

G1 X5.6 Y5.4 E1 F840

G1 X5.6 Y0.75 E1 F840

G1 X24.25 Y0.75 E1 F840

G1 X24.25 Y5.25 E1 F840

G1 X5.75 Y5.25 E1 F840

G1 X5.75 Y0.9 E1 F840

G1 X24.1 Y0.9 E1 F840

G1 X24.1 Y5.1 E1 F840

G1 X5.9 Y5.1 E1 F840

G1 X5.9 Y1.05 E1 F840

G1 X23.95 Y1.05 E1 F840

G1 X23.95 Y4.95 E1 F840

G1 X6.05 Y4.95 E1 F840

G1 X6.05 Y1.2 E1 F840

G1 X23.8 Y1.2 E1 F840

G1 X23.8 Y4.8 E1 F840

G1 X6.2 Y4.8 E1 F840

G1 X6.2 Y1.35 E1 F840

G1 X23.65 Y1.35 E1 F840

G1 X23.65 Y4.65 E1 F840

G1 X6.35 Y4.65 E1 F840

G1 X6.35 Y1.5 E1 F840

G1 X23.5 Y1.5 E1 F840

G1 X23.5 Y4.5 E1 F840

G1 X6.5 Y4.5 E1 F840

G1 X6.5 Y1.65 E1 F840

G1 X23.35 Y1.65 E1 F840

G1 X23.35 Y4.35 E1 F840

G1 X6.65 Y4.35 E1 F840

G1 X6.65 Y1.8 E1 F840

G1 X23.2 Y1.8 E1 F840

G1 X23.2 Y4.2 E1 F840

G1 X6.8 Y4.2 E1 F840

G1 X6.8 Y1.95 E1 F840

G1 X23.05 Y1.95 E1 F840

G1 X23.05 Y4.05 E1 F840

G1 X6.95 Y4.05 E1 F840

G1 X6.95 Y2.1 E1 F840

G1 X22.9 Y2.1 E1 F840

G1 X22.9 Y3.9 E1 F840

G1 X7.1 Y3.9 E1 F840

G1 X7.1 Y2.25 E1 F840

G1 X22.75 Y2.25 E1 F840

G1 X22.75 Y3.75 E1 F840

G1 X7.25 Y3.75 E1 F840

G1 X7.25 Y2.4 E1 F840

G1 X22.6 Y2.4 E1 F840

G1 X22.6 Y3.6 E1 F840

G1 X7.4 Y3.6 E1 F840

G1 X7.4 Y2.55 E1 F840

G1 X22.45 Y2.55 E1 F840

G1 X22.45 Y3.45 E1 F840

G1 X7.55 Y3.45 E1 F840

G1 X7.55 Y2.7 E1 F840

G1 X22.3 Y2.7 E1 F840

G1 X22.3 Y3.3 E1 F840

G1 X7.7 Y3.3 E1 F840

G1 X7.7 Y2.85 E1 F840

G1 X22.15 Y2.85 E1 F840

G1 X22.15 Y3.15 E1 F840

G1 X7.85 Y3.15 E1 F840

G1 X7.85 Y3 E1 F840

G1 X22.15 Y3 E1 F840

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S50 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5 Y0.15 E1 F960

G1 X24.85 Y0.15 E1 F960

G1 X24.85 Y5.85 E1 F960

G1 X5.15 Y5.85 E1 F960

G1 X5.15 Y0.3 E1 F960

G1 X24.7 Y0.3 E1 F960

G1 X24.7 Y5.7 E1 F960

G1 X5.3 Y5.7 E1 F960

G1 X5.3 Y0.45 E1 F960

G1 X24.55 Y0.45 E1 F960

G1 X24.55 Y5.55 E1 F960

G1 X5.45 Y5.55 E1 F960

G1 X5.45 Y0.6 E1 F960

G1 X24.4 Y0.6 E1 F960

G1 X24.4 Y5.4 E1 F960

G1 X5.6 Y5.4 E1 F960

G1 X5.6 Y0.75 E1 F960

G1 X24.25 Y0.75 E1 F960

G1 X24.25 Y5.25 E1 F960

G1 X5.75 Y5.25 E1 F960

G1 X5.75 Y0.9 E1 F960

G1 X24.1 Y0.9 E1 F960

G1 X24.1 Y5.1 E1 F960

G1 X5.9 Y5.1 E1 F960

G1 X5.9 Y1.05 E1 F960

G1 X23.95 Y1.05 E1 F960

G1 X23.95 Y4.95 E1 F960

G1 X6.05 Y4.95 E1 F960

G1 X6.05 Y1.2 E1 F960

G1 X23.8 Y1.2 E1 F960

G1 X23.8 Y4.8 E1 F960

G1 X6.2 Y4.8 E1 F960

G1 X6.2 Y1.35 E1 F960

G1 X23.65 Y1.35 E1 F960

G1 X23.65 Y4.65 E1 F960

G1 X6.35 Y4.65 E1 F960

G1 X6.35 Y1.5 E1 F960

G1 X23.5 Y1.5 E1 F960

G1 X23.5 Y4.5 E1 F960

G1 X6.5 Y4.5 E1 F960

G1 X6.5 Y1.65 E1 F960

G1 X23.35 Y1.65 E1 F960

G1 X23.35 Y4.35 E1 F960

G1 X6.65 Y4.35 E1 F960

G1 X6.65 Y1.8 E1 F960

G1 X23.2 Y1.8 E1 F960

G1 X23.2 Y4.2 E1 F960

G1 X6.8 Y4.2 E1 F960

G1 X6.8 Y1.95 E1 F960

G1 X23.05 Y1.95 E1 F960

G1 X23.05 Y4.05 E1 F960

G1 X6.95 Y4.05 E1 F960

G1 X6.95 Y2.1 E1 F960

G1 X22.9 Y2.1 E1 F960

G1 X22.9 Y3.9 E1 F960

G1 X7.1 Y3.9 E1 F960

G1 X7.1 Y2.25 E1 F960

G1 X22.75 Y2.25 E1 F960

G1 X22.75 Y3.75 E1 F960

G1 X7.25 Y3.75 E1 F960

G1 X7.25 Y2.4 E1 F960

G1 X22.6 Y2.4 E1 F960

G1 X22.6 Y3.6 E1 F960

G1 X7.4 Y3.6 E1 F960

G1 X7.4 Y2.55 E1 F960

G1 X22.45 Y2.55 E1 F960

G1 X22.45 Y3.45 E1 F960

G1 X7.55 Y3.45 E1 F960

G1 X7.55 Y2.7 E1 F960

G1 X22.3 Y2.7 E1 F960

G1 X22.3 Y3.3 E1 F960

G1 X7.7 Y3.3 E1 F960

G1 X7.7 Y2.85 E1 F960

G1 X22.15 Y2.85 E1 F960

G1 X22.15 Y3.15 E1 F960

G1 X7.85 Y3.15 E1 F960

G1 X7.85 Y3 E1 F960

G1 X22.15 Y3 E1 F960

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S70 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5 Y0.15 E1 F720

G1 X24.85 Y0.15 E1 F720

G1 X24.85 Y5.85 E1 F720

G1 X5.15 Y5.85 E1 F720

G1 X5.15 Y0.3 E1 F720

G1 X24.7 Y0.3 E1 F720

G1 X24.7 Y5.7 E1 F720

G1 X5.3 Y5.7 E1 F720

G1 X5.3 Y0.45 E1 F720

G1 X24.55 Y0.45 E1 F720

G1 X24.55 Y5.55 E1 F720

G1 X5.45 Y5.55 E1 F720

G1 X5.45 Y0.6 E1 F720

G1 X24.4 Y0.6 E1 F720

G1 X24.4 Y5.4 E1 F720

G1 X5.6 Y5.4 E1 F720

G1 X5.6 Y0.75 E1 F720

G1 X24.25 Y0.75 E1 F720

G1 X24.25 Y5.25 E1 F720

G1 X5.75 Y5.25 E1 F720

G1 X5.75 Y0.9 E1 F720

G1 X24.1 Y0.9 E1 F720

G1 X24.1 Y5.1 E1 F720

G1 X5.9 Y5.1 E1 F720

G1 X5.9 Y1.05 E1 F720

G1 X23.95 Y1.05 E1 F720

G1 X23.95 Y4.95 E1 F720

G1 X6.05 Y4.95 E1 F720

G1 X6.05 Y1.2 E1 F720

G1 X23.8 Y1.2 E1 F720

G1 X23.8 Y4.8 E1 F720

G1 X6.2 Y4.8 E1 F720

G1 X6.2 Y1.35 E1 F720

G1 X23.65 Y1.35 E1 F720

G1 X23.65 Y4.65 E1 F720

G1 X6.35 Y4.65 E1 F720

G1 X6.35 Y1.5 E1 F720

G1 X23.5 Y1.5 E1 F720

G1 X23.5 Y4.5 E1 F720

G1 X6.5 Y4.5 E1 F720

G1 X6.5 Y1.65 E1 F720

G1 X23.35 Y1.65 E1 F720

G1 X23.35 Y4.35 E1 F720

G1 X6.65 Y4.35 E1 F720

G1 X6.65 Y1.8 E1 F720

G1 X23.2 Y1.8 E1 F720

G1 X23.2 Y4.2 E1 F720

G1 X6.8 Y4.2 E1 F720

G1 X6.8 Y1.95 E1 F720

G1 X23.05 Y1.95 E1 F720

G1 X23.05 Y4.05 E1 F720

G1 X6.95 Y4.05 E1 F720

G1 X6.95 Y2.1 E1 F720

G1 X22.9 Y2.1 E1 F720

G1 X22.9 Y3.9 E1 F720

G1 X7.1 Y3.9 E1 F720

G1 X7.1 Y2.25 E1 F720

G1 X22.75 Y2.25 E1 F720

G1 X22.75 Y3.75 E1 F720

G1 X7.25 Y3.75 E1 F720

G1 X7.25 Y2.4 E1 F720

G1 X22.6 Y2.4 E1 F720

G1 X22.6 Y3.6 E1 F720

G1 X7.4 Y3.6 E1 F720

G1 X7.4 Y2.55 E1 F720

G1 X22.45 Y2.55 E1 F720

G1 X22.45 Y3.45 E1 F720

G1 X7.55 Y3.45 E1 F720

G1 X7.55 Y2.7 E1 F720

G1 X22.3 Y2.7 E1 F720

G1 X22.3 Y3.3 E1 F720

G1 X7.7 Y3.3 E1 F720

G1 X7.7 Y2.85 E1 F720

G1 X22.15 Y2.85 E1 F720

G1 X22.15 Y3.15 E1 F720

G1 X7.85 Y3.15 E1 F720

G1 X7.85 Y3 E1 F720

G1 X22.15 Y3 E1 F720

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S70 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5 Y0.15 E1 F840

G1 X24.85 Y0.15 E1 F840

G1 X24.85 Y5.85 E1 F840

G1 X5.15 Y5.85 E1 F840

G1 X5.15 Y0.3 E1 F840

G1 X24.7 Y0.3 E1 F840

G1 X24.7 Y5.7 E1 F840

G1 X5.3 Y5.7 E1 F840

G1 X5.3 Y0.45 E1 F840

G1 X24.55 Y0.45 E1 F840

G1 X24.55 Y5.55 E1 F840

G1 X5.45 Y5.55 E1 F840

G1 X5.45 Y0.6 E1 F840

G1 X24.4 Y0.6 E1 F840

G1 X24.4 Y5.4 E1 F840

G1 X5.6 Y5.4 E1 F840

G1 X5.6 Y0.75 E1 F840

G1 X24.25 Y0.75 E1 F840

G1 X24.25 Y5.25 E1 F840

G1 X5.75 Y5.25 E1 F840

G1 X5.75 Y0.9 E1 F840

G1 X24.1 Y0.9 E1 F840

G1 X24.1 Y5.1 E1 F840

G1 X5.9 Y5.1 E1 F840

G1 X5.9 Y1.05 E1 F840

G1 X23.95 Y1.05 E1 F840

G1 X23.95 Y4.95 E1 F840

G1 X6.05 Y4.95 E1 F840

G1 X6.05 Y1.2 E1 F840

G1 X23.8 Y1.2 E1 F840

G1 X23.8 Y4.8 E1 F840

G1 X6.2 Y4.8 E1 F840

G1 X6.2 Y1.35 E1 F840

G1 X23.65 Y1.35 E1 F840

G1 X23.65 Y4.65 E1 F840

G1 X6.35 Y4.65 E1 F840

G1 X6.35 Y1.5 E1 F840

G1 X23.5 Y1.5 E1 F840

G1 X23.5 Y4.5 E1 F840

G1 X6.5 Y4.5 E1 F840

G1 X6.5 Y1.65 E1 F840

G1 X23.35 Y1.65 E1 F840

G1 X23.35 Y4.35 E1 F840

G1 X6.65 Y4.35 E1 F840

G1 X6.65 Y1.8 E1 F840

G1 X23.2 Y1.8 E1 F840

G1 X23.2 Y4.2 E1 F840

G1 X6.8 Y4.2 E1 F840

G1 X6.8 Y1.95 E1 F840

G1 X23.05 Y1.95 E1 F840

G1 X23.05 Y4.05 E1 F840

G1 X6.95 Y4.05 E1 F840

G1 X6.95 Y2.1 E1 F840

G1 X22.9 Y2.1 E1 F840

G1 X22.9 Y3.9 E1 F840

G1 X7.1 Y3.9 E1 F840

G1 X7.1 Y2.25 E1 F840

G1 X22.75 Y2.25 E1 F840

G1 X22.75 Y3.75 E1 F840

G1 X7.25 Y3.75 E1 F840

G1 X7.25 Y2.4 E1 F840

G1 X22.6 Y2.4 E1 F840

G1 X22.6 Y3.6 E1 F840

G1 X7.4 Y3.6 E1 F840

G1 X7.4 Y2.55 E1 F840

G1 X22.45 Y2.55 E1 F840

G1 X22.45 Y3.45 E1 F840

G1 X7.55 Y3.45 E1 F840

G1 X7.55 Y2.7 E1 F840

G1 X22.3 Y2.7 E1 F840

G1 X22.3 Y3.3 E1 F840

G1 X7.7 Y3.3 E1 F840

G1 X7.7 Y2.85 E1 F840

G1 X22.15 Y2.85 E1 F840

G1 X22.15 Y3.15 E1 F840

G1 X7.85 Y3.15 E1 F840

G1 X7.85 Y3 E1 F840

G1 X22.15 Y3 E1 F840

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 6 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S70 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5 Y0.15 E1 F960

G1 X24.85 Y0.15 E1 F960

G1 X24.85 Y5.85 E1 F960

G1 X5.15 Y5.85 E1 F960

G1 X5.15 Y0.3 E1 F960

G1 X24.7 Y0.3 E1 F960

G1 X24.7 Y5.7 E1 F960

G1 X5.3 Y5.7 E1 F960

G1 X5.3 Y0.45 E1 F960

G1 X24.55 Y0.45 E1 F960

G1 X24.55 Y5.55 E1 F960

G1 X5.45 Y5.55 E1 F960

G1 X5.45 Y0.6 E1 F960

G1 X24.4 Y0.6 E1 F960

G1 X24.4 Y5.4 E1 F960

G1 X5.6 Y5.4 E1 F960

G1 X5.6 Y0.75 E1 F960

G1 X24.25 Y0.75 E1 F960

G1 X24.25 Y5.25 E1 F960

G1 X5.75 Y5.25 E1 F960

G1 X5.75 Y0.9 E1 F960

G1 X24.1 Y0.9 E1 F960

G1 X24.1 Y5.1 E1 F960

G1 X5.9 Y5.1 E1 F960

G1 X5.9 Y1.05 E1 F960

G1 X23.95 Y1.05 E1 F960

G1 X23.95 Y4.95 E1 F960

G1 X6.05 Y4.95 E1 F960

G1 X6.05 Y1.2 E1 F960

G1 X23.8 Y1.2 E1 F960

G1 X23.8 Y4.8 E1 F960

G1 X6.2 Y4.8 E1 F960

G1 X6.2 Y1.35 E1 F960

G1 X23.65 Y1.35 E1 F960

G1 X23.65 Y4.65 E1 F960

G1 X6.35 Y4.65 E1 F960

G1 X6.35 Y1.5 E1 F960

G1 X23.5 Y1.5 E1 F960

G1 X23.5 Y4.5 E1 F960

G1 X6.5 Y4.5 E1 F960

G1 X6.5 Y1.65 E1 F960

G1 X23.35 Y1.65 E1 F960

G1 X23.35 Y4.35 E1 F960

G1 X6.65 Y4.35 E1 F960

G1 X6.65 Y1.8 E1 F960

G1 X23.2 Y1.8 E1 F960

G1 X23.2 Y4.2 E1 F960

G1 X6.8 Y4.2 E1 F960

G1 X6.8 Y1.95 E1 F960

G1 X23.05 Y1.95 E1 F960

G1 X23.05 Y4.05 E1 F960

G1 X6.95 Y4.05 E1 F960

G1 X6.95 Y2.1 E1 F960

G1 X22.9 Y2.1 E1 F960

G1 X22.9 Y3.9 E1 F960

G1 X7.1 Y3.9 E1 F960

G1 X7.1 Y2.25 E1 F960

G1 X22.75 Y2.25 E1 F960

G1 X22.75 Y3.75 E1 F960

G1 X7.25 Y3.75 E1 F960

G1 X7.25 Y2.4 E1 F960

G1 X22.6 Y2.4 E1 F960

G1 X22.6 Y3.6 E1 F960

G1 X7.4 Y3.6 E1 F960

G1 X7.4 Y2.55 E1 F960

G1 X22.45 Y2.55 E1 F960

G1 X22.45 Y3.45 E1 F960

G1 X7.55 Y3.45 E1 F960

G1 X7.55 Y2.7 E1 F960

G1 X22.3 Y2.7 E1 F960

G1 X22.3 Y3.3 E1 F960

G1 X7.7 Y3.3 E1 F960

G1 X7.7 Y2.85 E1 F960

G1 X22.15 Y2.85 E1 F960

G1 X22.15 Y3.15 E1 F960

G1 X7.85 Y3.15 E1 F960

G1 X7.85 Y3 E1 F960

G1 X22.15 Y3 E1 F960

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program