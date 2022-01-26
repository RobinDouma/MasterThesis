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
G1 X25 Y0 E1 F60
G1 X25 Y0 E1 F60
G1 X35 Y0 E1 F60

G1 X35 Y6 E1 F60

G1 X25 Y6 E1 F60

G1 X25 Y0.25 E1 F60

G1 X34.75 Y0.25 E1 F60

G1 X34.75 Y5.75 E1 F60

G1 X25.25 Y5.75 E1 F60

G1 X25.25 Y0.5 E1 F60

G1 X34.5 Y0.5 E1 F60

G1 X34.5 Y5.5 E1 F60

G1 X25.5 Y5.5 E1 F60

G1 X25.5 Y0.75 E1 F60

G1 X34.25 Y0.75 E1 F60

G1 X34.25 Y5.25 E1 F60

G1 X25.75 Y5.25 E1 F60

G1 X25.75 Y1 E1 F60

G1 X34 Y1 E1 F60

G1 X34 Y5 E1 F60

G1 X26 Y5 E1 F60

G1 X26 Y1.25 E1 F60

G1 X33.75 Y1.25 E1 F60

G1 X33.75 Y4.75 E1 F60

G1 X26.25 Y4.75 E1 F60

G1 X26.25 Y1.5 E1 F60

G1 X33.5 Y1.5 E1 F60

G1 X33.5 Y4.5 E1 F60

G1 X26.5 Y4.5 E1 F60

G1 X26.5 Y1.75 E1 F60

G1 X33.25 Y1.75 E1 F60

G1 X33.25 Y4.25 E1 F60

G1 X26.75 Y4.25 E1 F60

G1 X26.75 Y2 E1 F60

G1 X33 Y2 E1 F60

G1 X33 Y4 E1 F60

G1 X27 Y4 E1 F60

G1 X27 Y2.25 E1 F60

G1 X32.75 Y2.25 E1 F60

G1 X32.75 Y3.75 E1 F60

G1 X27.25 Y3.75 E1 F60

G1 X27.25 Y2.5 E1 F60

G1 X32.5 Y2.5 E1 F60

G1 X32.5 Y3.5 E1 F60

G1 X27.5 Y3.5 E1 F60

G1 X27.5 Y2.75 E1 F60

G1 X32.25 Y2.75 E1 F60

G1 X32.25 Y3.25 E1 F60

G1 X27.75 Y3.25 E1 F60

G1 X27.75 Y3 E1 F60

G1 X32 Y3 E1 F60

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X25 Y10 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F60
G1 X25 Y10 E1 F60
G1 X25 Y10 E1 F60
G1 X35 Y10 E1 F60

G1 X35 Y16 E1 F60

G1 X25 Y16 E1 F60

G1 X25 Y10.25 E1 F60

G1 X34.75 Y10.25 E1 F60

G1 X34.75 Y15.75 E1 F60

G1 X25.25 Y15.75 E1 F60

G1 X25.25 Y10.5 E1 F60

G1 X34.5 Y10.5 E1 F60

G1 X34.5 Y15.5 E1 F60

G1 X25.5 Y15.5 E1 F60

G1 X25.5 Y10.75 E1 F60

G1 X34.25 Y10.75 E1 F60

G1 X34.25 Y15.25 E1 F60

G1 X25.75 Y15.25 E1 F60

G1 X25.75 Y11 E1 F60

G1 X34 Y11 E1 F60

G1 X34 Y15 E1 F60

G1 X26 Y15 E1 F60

G1 X26 Y11.25 E1 F60

G1 X33.75 Y11.25 E1 F60

G1 X33.75 Y14.75 E1 F60

G1 X26.25 Y14.75 E1 F60

G1 X26.25 Y11.5 E1 F60

G1 X33.5 Y11.5 E1 F60

G1 X33.5 Y14.5 E1 F60

G1 X26.5 Y14.5 E1 F60

G1 X26.5 Y11.75 E1 F60

G1 X33.25 Y11.75 E1 F60

G1 X33.25 Y14.25 E1 F60

G1 X26.75 Y14.25 E1 F60

G1 X26.75 Y12 E1 F60

G1 X33 Y12 E1 F60

G1 X33 Y14 E1 F60

G1 X27 Y14 E1 F60

G1 X27 Y12.25 E1 F60

G1 X32.75 Y12.25 E1 F60

G1 X32.75 Y13.75 E1 F60

G1 X27.25 Y13.75 E1 F60

G1 X27.25 Y12.5 E1 F60

G1 X32.5 Y12.5 E1 F60

G1 X32.5 Y13.5 E1 F60

G1 X27.5 Y13.5 E1 F60

G1 X27.5 Y12.75 E1 F60

G1 X32.25 Y12.75 E1 F60

G1 X32.25 Y13.25 E1 F60

G1 X27.75 Y13.25 E1 F60

G1 X27.75 Y13 E1 F60

G1 X32 Y13 E1 F60

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G4 P30000.000000 ; wait P[ms] between shapes
G0 X15 Y10 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z


M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X15 Y10 E1 F600
G1 X15 Y10 E1 F600
G1 X25 Y10 E1 F600

G1 X25 Y16 E1 F600

G1 X15 Y16 E1 F600

G1 X15 Y10.17 E1 F600

G1 X24.83 Y10.17 E1 F600

G1 X24.83 Y15.83 E1 F600

G1 X15.17 Y15.83 E1 F600

G1 X15.17 Y10.34 E1 F600

G1 X24.66 Y10.34 E1 F600

G1 X24.66 Y15.66 E1 F600

G1 X15.34 Y15.66 E1 F600

G1 X15.34 Y10.51 E1 F600

G1 X24.49 Y10.51 E1 F600

G1 X24.49 Y15.49 E1 F600

G1 X15.51 Y15.49 E1 F600

G1 X15.51 Y10.68 E1 F600

G1 X24.32 Y10.68 E1 F600

G1 X24.32 Y15.32 E1 F600

G1 X15.68 Y15.32 E1 F600

G1 X15.68 Y10.85 E1 F600

G1 X24.15 Y10.85 E1 F600

G1 X24.15 Y15.15 E1 F600

G1 X15.85 Y15.15 E1 F600

G1 X15.85 Y11.02 E1 F600

G1 X23.98 Y11.02 E1 F600

G1 X23.98 Y14.98 E1 F600

G1 X16.02 Y14.98 E1 F600

G1 X16.02 Y11.19 E1 F600

G1 X23.81 Y11.19 E1 F600

G1 X23.81 Y14.81 E1 F600

G1 X16.19 Y14.81 E1 F600

G1 X16.19 Y11.36 E1 F600

G1 X23.64 Y11.36 E1 F600

G1 X23.64 Y14.64 E1 F600

G1 X16.36 Y14.64 E1 F600

G1 X16.36 Y11.53 E1 F600

G1 X23.47 Y11.53 E1 F600

G1 X23.47 Y14.47 E1 F600

G1 X16.53 Y14.47 E1 F600

G1 X16.53 Y11.7 E1 F600

G1 X23.3 Y11.7 E1 F600

G1 X23.3 Y14.3 E1 F600

G1 X16.7 Y14.3 E1 F600

G1 X16.7 Y11.87 E1 F600

G1 X23.13 Y11.87 E1 F600

G1 X23.13 Y14.13 E1 F600

G1 X16.87 Y14.13 E1 F600

G1 X16.87 Y12.04 E1 F600

G1 X22.96 Y12.04 E1 F600

G1 X22.96 Y13.96 E1 F600

G1 X17.04 Y13.96 E1 F600

G1 X17.04 Y12.21 E1 F600

G1 X22.79 Y12.21 E1 F600

G1 X22.79 Y13.79 E1 F600

G1 X17.21 Y13.79 E1 F600

G1 X17.21 Y12.38 E1 F600

G1 X22.62 Y12.38 E1 F600

G1 X22.62 Y13.62 E1 F600

G1 X17.38 Y13.62 E1 F600

G1 X17.38 Y12.55 E1 F600

G1 X22.45 Y12.55 E1 F600

G1 X22.45 Y13.45 E1 F600

G1 X17.55 Y13.45 E1 F600

G1 X17.55 Y12.72 E1 F600

G1 X22.28 Y12.72 E1 F600

G1 X22.28 Y13.28 E1 F600

G1 X17.72 Y12.86 E1 F600

G1 X22.11 Y12.86 E1 F600

G1 X22.11 Y13.14 E1 F600

G1 X17.89 Y13.14 E1 F600

G1 X17.89 Y13 E1 F600

G1 X21.94 Y13 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE
; INITIALIZATION : PRINTING

M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G4 P900000.000000 ; wait P[ms] between shapes
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z


M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X0 Y0 E1 F600
G1 X5 Y0 E1 F600
G1 X25 Y0 E1 F600

G1 X25 Y6 E1 F600

G1 X5 Y6 E1 F600

G1 X5 Y0.09 E1 F600

G1 X24.91 Y0.09 E1 F600

G1 X24.91 Y5.91 E1 F600

G1 X5.09 Y5.91 E1 F600

G1 X5.09 Y0.18 E1 F600

G1 X24.82 Y0.18 E1 F600

G1 X24.82 Y5.82 E1 F600

G1 X5.18 Y5.82 E1 F600

G1 X5.18 Y0.27 E1 F600

G1 X24.73 Y0.27 E1 F600

G1 X24.73 Y5.73 E1 F600

G1 X5.27 Y5.73 E1 F600

G1 X5.27 Y0.36 E1 F600

G1 X24.64 Y0.36 E1 F600

G1 X24.64 Y5.64 E1 F600

G1 X5.36 Y5.64 E1 F600

G1 X5.36 Y0.45 E1 F600

G1 X24.55 Y0.45 E1 F600

G1 X24.55 Y5.55 E1 F600

G1 X5.45 Y5.55 E1 F600

G1 X5.45 Y0.54 E1 F600

G1 X24.46 Y0.54 E1 F600

G1 X24.46 Y5.46 E1 F600

G1 X5.54 Y5.46 E1 F600

G1 X5.54 Y0.63 E1 F600

G1 X24.37 Y0.63 E1 F600

G1 X24.37 Y5.37 E1 F600

G1 X5.63 Y5.37 E1 F600

G1 X5.63 Y0.72 E1 F600

G1 X24.28 Y0.72 E1 F600

G1 X24.28 Y5.28 E1 F600

G1 X5.72 Y5.28 E1 F600

G1 X5.72 Y0.81 E1 F600

G1 X24.19 Y0.81 E1 F600

G1 X24.19 Y5.19 E1 F600

G1 X5.81 Y5.19 E1 F600

G1 X5.81 Y0.9 E1 F600

G1 X24.1 Y0.9 E1 F600

G1 X24.1 Y5.1 E1 F600

G1 X5.9 Y5.1 E1 F600

G1 X5.9 Y0.99 E1 F600

G1 X24.01 Y0.99 E1 F600

G1 X24.01 Y5.01 E1 F600

G1 X5.99 Y5.01 E1 F600

G1 X5.99 Y1.08 E1 F600

G1 X23.92 Y1.08 E1 F600

G1 X23.92 Y4.92 E1 F600

G1 X6.08 Y4.92 E1 F600

G1 X6.08 Y1.17 E1 F600

G1 X23.83 Y1.17 E1 F600

G1 X23.83 Y4.83 E1 F600

G1 X6.17 Y4.83 E1 F600

G1 X6.17 Y1.26 E1 F600

G1 X23.74 Y1.26 E1 F600

G1 X23.74 Y4.74 E1 F600

G1 X6.26 Y4.74 E1 F600

G1 X6.26 Y1.35 E1 F600

G1 X23.65 Y1.35 E1 F600

G1 X23.65 Y4.65 E1 F600

G1 X6.35 Y4.65 E1 F600

G1 X6.35 Y1.44 E1 F600

G1 X23.56 Y1.44 E1 F600

G1 X23.56 Y4.56 E1 F600

G1 X6.44 Y4.56 E1 F600

G1 X6.44 Y1.53 E1 F600

G1 X23.47 Y1.53 E1 F600

G1 X23.47 Y4.47 E1 F600

G1 X6.53 Y4.47 E1 F600

G1 X6.53 Y1.62 E1 F600

G1 X23.38 Y1.62 E1 F600

G1 X23.38 Y4.38 E1 F600

G1 X6.62 Y4.38 E1 F600

G1 X6.62 Y1.71 E1 F600

G1 X23.29 Y1.71 E1 F600

G1 X23.29 Y4.29 E1 F600

G1 X6.71 Y4.29 E1 F600

G1 X6.71 Y1.8 E1 F600

G1 X23.2 Y1.8 E1 F600

G1 X23.2 Y4.2 E1 F600

G1 X6.8 Y4.2 E1 F600

G1 X6.8 Y1.89 E1 F600

G1 X23.11 Y1.89 E1 F600

G1 X23.11 Y4.11 E1 F600

G1 X6.89 Y4.11 E1 F600

G1 X6.89 Y1.98 E1 F600

G1 X23.02 Y1.98 E1 F600

G1 X23.02 Y4.02 E1 F600

G1 X6.98 Y4.02 E1 F600

G1 X6.98 Y2.07 E1 F600

G1 X22.93 Y2.07 E1 F600

G1 X22.93 Y3.93 E1 F600

G1 X7.07 Y3.93 E1 F600

G1 X7.07 Y2.16 E1 F600

G1 X22.84 Y2.16 E1 F600

G1 X22.84 Y3.84 E1 F600

G1 X7.16 Y3.84 E1 F600

G1 X7.16 Y2.25 E1 F600

G1 X22.75 Y2.25 E1 F600

G1 X22.75 Y3.75 E1 F600

G1 X7.25 Y3.75 E1 F600

G1 X7.25 Y2.34 E1 F600

G1 X22.66 Y2.34 E1 F600

G1 X22.66 Y3.66 E1 F600

G1 X7.34 Y3.66 E1 F600

G1 X7.34 Y2.43 E1 F600

G1 X22.57 Y2.43 E1 F600

G1 X22.57 Y3.57 E1 F600

G1 X7.43 Y3.57 E1 F600

G1 X7.43 Y2.52 E1 F600

G1 X22.48 Y2.52 E1 F600

G1 X22.48 Y3.48 E1 F600

G1 X7.52 Y3.48 E1 F600

G1 X7.52 Y2.61 E1 F600

G1 X22.39 Y2.61 E1 F600

G1 X22.39 Y3.39 E1 F600

G1 X7.61 Y3.39 E1 F600

G1 X7.61 Y2.7 E1 F600

G1 X22.3 Y2.7 E1 F600

G1 X22.3 Y3.3 E1 F600

G1 X7.7 Y3.3 E1 F600

G1 X7.7 Y2.79 E1 F600

G1 X22.21 Y2.79 E1 F600

G1 X22.21 Y3.21 E1 F600

G1 X7.79 Y3.21 E1 F600

G1 X7.79 Y2.895 E1 F600

G1 X22.12 Y2.895 E1 F600

G1 X22.12 Y3.105 E1 F600

G1 X7.88 Y3.105 E1 F600

G1 X7.88 Y3 E1 F600

G1 X22.03 Y3 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y10 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X0 Y10 E1 F600
G1 X5 Y10 E1 F600
G1 X15 Y10 E1 F600

G1 X15 Y16 E1 F600

G1 X5 Y16 E1 F600

G1 X5 Y10.09 E1 F600

G1 X14.91 Y10.09 E1 F600

G1 X14.91 Y15.91 E1 F600

G1 X5.09 Y15.91 E1 F600

G1 X5.09 Y10.18 E1 F600

G1 X14.82 Y10.18 E1 F600

G1 X14.82 Y15.82 E1 F600

G1 X5.18 Y15.82 E1 F600

G1 X5.18 Y10.27 E1 F600

G1 X14.73 Y10.27 E1 F600

G1 X14.73 Y15.73 E1 F600

G1 X5.27 Y15.73 E1 F600

G1 X5.27 Y10.36 E1 F600

G1 X14.64 Y10.36 E1 F600

G1 X14.64 Y15.64 E1 F600

G1 X5.36 Y15.64 E1 F600

G1 X5.36 Y10.45 E1 F600

G1 X14.55 Y10.45 E1 F600

G1 X14.55 Y15.55 E1 F600

G1 X5.45 Y15.55 E1 F600

G1 X5.45 Y10.54 E1 F600

G1 X14.46 Y10.54 E1 F600

G1 X14.46 Y15.46 E1 F600

G1 X5.54 Y15.46 E1 F600

G1 X5.54 Y10.63 E1 F600

G1 X14.37 Y10.63 E1 F600

G1 X14.37 Y15.37 E1 F600

G1 X5.63 Y15.37 E1 F600

G1 X5.63 Y10.72 E1 F600

G1 X14.28 Y10.72 E1 F600

G1 X14.28 Y15.28 E1 F600

G1 X5.72 Y15.28 E1 F600

G1 X5.72 Y10.81 E1 F600

G1 X14.19 Y10.81 E1 F600

G1 X14.19 Y15.19 E1 F600

G1 X5.81 Y15.19 E1 F600

G1 X5.81 Y10.9 E1 F600

G1 X14.1 Y10.9 E1 F600

G1 X14.1 Y15.1 E1 F600

G1 X5.9 Y15.1 E1 F600

G1 X5.9 Y10.99 E1 F600

G1 X14.01 Y10.99 E1 F600

G1 X14.01 Y15.01 E1 F600

G1 X5.99 Y15.01 E1 F600

G1 X5.99 Y11.08 E1 F600

G1 X13.92 Y11.08 E1 F600

G1 X13.92 Y14.92 E1 F600

G1 X6.08 Y14.92 E1 F600

G1 X6.08 Y11.17 E1 F600

G1 X13.83 Y11.17 E1 F600

G1 X13.83 Y14.83 E1 F600

G1 X6.17 Y14.83 E1 F600

G1 X6.17 Y11.26 E1 F600

G1 X13.74 Y11.26 E1 F600

G1 X13.74 Y14.74 E1 F600

G1 X6.26 Y14.74 E1 F600

G1 X6.26 Y11.35 E1 F600

G1 X13.65 Y11.35 E1 F600

G1 X13.65 Y14.65 E1 F600

G1 X6.35 Y14.65 E1 F600

G1 X6.35 Y11.44 E1 F600

G1 X13.56 Y11.44 E1 F600

G1 X13.56 Y14.56 E1 F600

G1 X6.44 Y14.56 E1 F600

G1 X6.44 Y11.53 E1 F600

G1 X13.47 Y11.53 E1 F600

G1 X13.47 Y14.47 E1 F600

G1 X6.53 Y14.47 E1 F600

G1 X6.53 Y11.62 E1 F600

G1 X13.38 Y11.62 E1 F600

G1 X13.38 Y14.38 E1 F600

G1 X6.62 Y14.38 E1 F600

G1 X6.62 Y11.71 E1 F600

G1 X13.29 Y11.71 E1 F600

G1 X13.29 Y14.29 E1 F600

G1 X6.71 Y14.29 E1 F600

G1 X6.71 Y11.8 E1 F600

G1 X13.2 Y11.8 E1 F600

G1 X13.2 Y14.2 E1 F600

G1 X6.8 Y14.2 E1 F600

G1 X6.8 Y11.89 E1 F600

G1 X13.11 Y11.89 E1 F600

G1 X13.11 Y14.11 E1 F600

G1 X6.89 Y14.11 E1 F600

G1 X6.89 Y11.98 E1 F600

G1 X13.02 Y11.98 E1 F600

G1 X13.02 Y14.02 E1 F600

G1 X6.98 Y14.02 E1 F600

G1 X6.98 Y12.07 E1 F600

G1 X12.93 Y12.07 E1 F600

G1 X12.93 Y13.93 E1 F600

G1 X7.07 Y13.93 E1 F600

G1 X7.07 Y12.16 E1 F600

G1 X12.84 Y12.16 E1 F600

G1 X12.84 Y13.84 E1 F600

G1 X7.16 Y13.84 E1 F600

G1 X7.16 Y12.25 E1 F600

G1 X12.75 Y12.25 E1 F600

G1 X12.75 Y13.75 E1 F600

G1 X7.25 Y13.75 E1 F600

G1 X7.25 Y12.34 E1 F600

G1 X12.66 Y12.34 E1 F600

G1 X12.66 Y13.66 E1 F600

G1 X7.34 Y13.66 E1 F600

G1 X7.34 Y12.43 E1 F600

G1 X12.57 Y12.43 E1 F600

G1 X12.57 Y13.57 E1 F600

G1 X7.43 Y13.57 E1 F600

G1 X7.43 Y12.52 E1 F600

G1 X12.48 Y12.52 E1 F600

G1 X12.48 Y13.48 E1 F600

G1 X7.52 Y13.48 E1 F600

G1 X7.52 Y12.61 E1 F600

G1 X12.39 Y12.61 E1 F600

G1 X12.39 Y13.39 E1 F600

G1 X7.61 Y13.39 E1 F600

G1 X7.61 Y12.7 E1 F600

G1 X12.3 Y12.7 E1 F600

G1 X12.3 Y13.3 E1 F600

G1 X7.7 Y13.3 E1 F600

G1 X7.7 Y12.79 E1 F600

G1 X12.21 Y12.79 E1 F600

G1 X12.21 Y13.21 E1 F600

G1 X7.79 Y13.21 E1 F600

G1 X7.79 Y12.895 E1 F600

G1 X12.12 Y12.895 E1 F600

G1 X12.12 Y13.105 E1 F600

G1 X7.88 Y13.105 E1 F600

G1 X7.88 Y13 E1 F600

G1 X12.03 Y13 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program