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
M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F60
G1 X10 Y43 E1 F60
G1 X10 Y43 E1 F60

G3 I5 E1 F60

G1 X10.25 E1 F60
G3 I4.75 E1 F60

G1 X10.5 E1 F60
G3 I4.5 E1 F60

G1 X10.75 E1 F60
G3 I4.25 E1 F60

G1 X11 E1 F60
G3 I4 E1 F60

G1 X11.25 E1 F60
G3 I3.75 E1 F60

G1 X11.5 E1 F60
G3 I3.5 E1 F60

G1 X11.75 E1 F60
G3 I3.25 E1 F60

G1 X12 E1 F60
G3 I3 E1 F60

G1 X12.25 E1 F60
G3 I2.75 E1 F60

G1 X12.5 E1 F60
G3 I2.5 E1 F60

G1 X12.75 E1 F60
G3 I2.25 E1 F60

G1 X13 E1 F60
G3 I2 E1 F60

G1 X13.25 E1 F60
G3 I1.75 E1 F60

G1 X13.5 E1 F60
G3 I1.5 E1 F60

G1 X13.75 E1 F60
G3 I1.25 E1 F60

G1 X14 E1 F60
G3 I1 E1 F60

G1 X14.25 E1 F60
G3 I0.75 E1 F60

G1 X14.5 E1 F60
G3 I0.5 E1 F60

G1 X14.75 E1 F60
G3 I0.25 E1 F60

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G4 P30000.000000 ; wait P[ms] between shapes
G0 X0 Y11 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X0 Y11 E1 F600
G1 X0 Y11 E1 F600
G1 X30 Y11 E1 F600

G1 X30 Y17 E1 F600

G1 X0 Y17 E1 F600

G1 X0 Y11.17 E1 F600

G1 X29.83 Y11.17 E1 F600

G1 X29.83 Y16.83 E1 F600

G1 X0.17 Y16.83 E1 F600

G1 X0.17 Y11.34 E1 F600

G1 X29.66 Y11.34 E1 F600

G1 X29.66 Y16.66 E1 F600

G1 X0.34 Y16.66 E1 F600

G1 X0.34 Y11.51 E1 F600

G1 X29.49 Y11.51 E1 F600

G1 X29.49 Y16.49 E1 F600

G1 X0.51 Y16.49 E1 F600

G1 X0.51 Y11.68 E1 F600

G1 X29.32 Y11.68 E1 F600

G1 X29.32 Y16.32 E1 F600

G1 X0.68 Y16.32 E1 F600

G1 X0.68 Y11.85 E1 F600

G1 X29.15 Y11.85 E1 F600

G1 X29.15 Y16.15 E1 F600

G1 X0.85 Y16.15 E1 F600

G1 X0.85 Y12.02 E1 F600

G1 X28.98 Y12.02 E1 F600

G1 X28.98 Y15.98 E1 F600

G1 X1.02 Y15.98 E1 F600

G1 X1.02 Y12.19 E1 F600

G1 X28.81 Y12.19 E1 F600

G1 X28.81 Y15.81 E1 F600

G1 X1.19 Y15.81 E1 F600

G1 X1.19 Y12.36 E1 F600

G1 X28.64 Y12.36 E1 F600

G1 X28.64 Y15.64 E1 F600

G1 X1.36 Y15.64 E1 F600

G1 X1.36 Y12.53 E1 F600

G1 X28.47 Y12.53 E1 F600

G1 X28.47 Y15.47 E1 F600

G1 X1.53 Y15.47 E1 F600

G1 X1.53 Y12.7 E1 F600

G1 X28.3 Y12.7 E1 F600

G1 X28.3 Y15.3 E1 F600

G1 X1.7 Y15.3 E1 F600

G1 X1.7 Y12.87 E1 F600

G1 X28.13 Y12.87 E1 F600

G1 X28.13 Y15.13 E1 F600

G1 X1.87 Y15.13 E1 F600

G1 X1.87 Y13.04 E1 F600

G1 X27.96 Y13.04 E1 F600

G1 X27.96 Y14.96 E1 F600

G1 X2.04 Y14.96 E1 F600

G1 X2.04 Y13.21 E1 F600

G1 X27.79 Y13.21 E1 F600

G1 X27.79 Y14.79 E1 F600

G1 X2.21 Y14.79 E1 F600

G1 X2.21 Y13.38 E1 F600

G1 X27.62 Y13.38 E1 F600

G1 X27.62 Y14.62 E1 F600

G1 X2.38 Y14.62 E1 F600

G1 X2.38 Y13.55 E1 F600

G1 X27.45 Y13.55 E1 F600

G1 X27.45 Y14.45 E1 F600

G1 X2.55 Y14.45 E1 F600

G1 X2.55 Y13.72 E1 F600

G1 X27.28 Y13.72 E1 F600

G1 X27.28 Y14.28 E1 F600

G1 X2.72 Y14.28 E1 F600

G1 X2.72 Y13.86 E1 F600

G1 X27.11 Y13.86 E1 F600

G1 X27.11 Y14.14 E1 F600

G1 X2.89 Y14.14 E1 F600

G1 X2.89 Y14 E1 F600

G1 X26.94 Y14 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G4 0.0 ; wait P[ms] between shapes
G0 X24 Y18 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X24 Y18 E1 F600
G1 X24 Y18 E1 F600
G1 X30 Y18 E1 F600

G1 X30 Y48 E1 F600

G1 X24 Y48 E1 F600

G1 X24 Y18.17 E1 F600

G1 X29.83 Y18.17 E1 F600

G1 X29.83 Y47.83 E1 F600

G1 X24.17 Y47.83 E1 F600

G1 X24.17 Y18.34 E1 F600

G1 X29.66 Y18.34 E1 F600

G1 X29.66 Y47.66 E1 F600

G1 X24.34 Y47.66 E1 F600

G1 X24.34 Y18.51 E1 F600

G1 X29.49 Y18.51 E1 F600

G1 X29.49 Y47.49 E1 F600

G1 X24.51 Y47.49 E1 F600

G1 X24.51 Y18.68 E1 F600

G1 X29.32 Y18.68 E1 F600

G1 X29.32 Y47.32 E1 F600

G1 X24.68 Y47.32 E1 F600

G1 X24.68 Y18.85 E1 F600

G1 X29.15 Y18.85 E1 F600

G1 X29.15 Y47.15 E1 F600

G1 X24.85 Y47.15 E1 F600

G1 X24.85 Y19.02 E1 F600

G1 X28.98 Y19.02 E1 F600

G1 X28.98 Y46.98 E1 F600

G1 X25.02 Y46.98 E1 F600

G1 X25.02 Y19.19 E1 F600

G1 X28.81 Y19.19 E1 F600

G1 X28.81 Y46.81 E1 F600

G1 X25.19 Y46.81 E1 F600

G1 X25.19 Y19.36 E1 F600

G1 X28.64 Y19.36 E1 F600

G1 X28.64 Y46.64 E1 F600

G1 X25.36 Y46.64 E1 F600

G1 X25.36 Y19.53 E1 F600

G1 X28.47 Y19.53 E1 F600

G1 X28.47 Y46.47 E1 F600

G1 X25.53 Y46.47 E1 F600

G1 X25.53 Y19.7 E1 F600

G1 X28.3 Y19.7 E1 F600

G1 X28.3 Y46.3 E1 F600

G1 X25.7 Y46.3 E1 F600

G1 X25.7 Y19.87 E1 F600

G1 X28.13 Y19.87 E1 F600

G1 X28.13 Y46.13 E1 F600

G1 X25.87 Y46.13 E1 F600

G1 X25.87 Y20.04 E1 F600

G1 X27.96 Y20.04 E1 F600

G1 X27.96 Y45.96 E1 F600

G1 X26.04 Y45.96 E1 F600

G1 X26.04 Y20.21 E1 F600

G1 X27.79 Y20.21 E1 F600

G1 X27.79 Y45.79 E1 F600

G1 X26.21 Y45.79 E1 F600

G1 X26.21 Y20.38 E1 F600

G1 X27.62 Y20.38 E1 F600

G1 X27.62 Y45.62 E1 F600

G1 X26.38 Y45.62 E1 F600

G1 X26.38 Y20.55 E1 F600

G1 X27.45 Y20.55 E1 F600

G1 X27.45 Y45.45 E1 F600

G1 X26.55 Y45.45 E1 F600

G1 X26.55 Y20.72 E1 F600

G1 X27.28 Y20.72 E1 F600

G1 X27.28 Y45.28 E1 F600

G1 X26.72 Y45.28 E1 F600

G1 X26.72 Y20.86 E1 F600

G1 X27.09 Y20.86 E1 F600

G1 X27.09 Y45.14 E1 F600

G1 X26.91 Y45.14 E1 F600

G1 X26.91 Y21.17 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G4 P900000.000000 ; wait P[ms] between shapes
G0 X10 Y43 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X0 Y0 E1 F600
G1 X0 Y0 E1 F600
G1 X30 Y0 E1 F600

G1 X30 Y6 E1 F600

G1 X0 Y6 E1 F600

G1 X0 Y0.09 E1 F600

G1 X29.91 Y0.09 E1 F600

G1 X29.91 Y5.91 E1 F600

G1 X0.09 Y5.91 E1 F600

G1 X0.09 Y0.18 E1 F600

G1 X29.82 Y0.18 E1 F600

G1 X29.82 Y5.82 E1 F600

G1 X0.18 Y5.82 E1 F600

G1 X0.18 Y0.27 E1 F600

G1 X29.73 Y0.27 E1 F600

G1 X29.73 Y5.73 E1 F600

G1 X0.27 Y5.73 E1 F600

G1 X0.27 Y0.36 E1 F600

G1 X29.64 Y0.36 E1 F600

G1 X29.64 Y5.64 E1 F600

G1 X0.36 Y5.64 E1 F600

G1 X0.36 Y0.45 E1 F600

G1 X29.55 Y0.45 E1 F600

G1 X29.55 Y5.55 E1 F600

G1 X0.45 Y5.55 E1 F600

G1 X0.45 Y0.54 E1 F600

G1 X29.46 Y0.54 E1 F600

G1 X29.46 Y5.46 E1 F600

G1 X0.54 Y5.46 E1 F600

G1 X0.54 Y0.63 E1 F600

G1 X29.37 Y0.63 E1 F600

G1 X29.37 Y5.37 E1 F600

G1 X0.63 Y5.37 E1 F600

G1 X0.63 Y0.72 E1 F600

G1 X29.28 Y0.72 E1 F600

G1 X29.28 Y5.28 E1 F600

G1 X0.72 Y5.28 E1 F600

G1 X0.72 Y0.81 E1 F600

G1 X29.19 Y0.81 E1 F600

G1 X29.19 Y5.19 E1 F600

G1 X0.81 Y5.19 E1 F600

G1 X0.81 Y0.9 E1 F600

G1 X29.1 Y0.9 E1 F600

G1 X29.1 Y5.1 E1 F600

G1 X0.9 Y5.1 E1 F600

G1 X0.9 Y0.99 E1 F600

G1 X29.01 Y0.99 E1 F600

G1 X29.01 Y5.01 E1 F600

G1 X0.99 Y5.01 E1 F600

G1 X0.99 Y1.08 E1 F600

G1 X28.92 Y1.08 E1 F600

G1 X28.92 Y4.92 E1 F600

G1 X1.08 Y4.92 E1 F600

G1 X1.08 Y1.17 E1 F600

G1 X28.83 Y1.17 E1 F600

G1 X28.83 Y4.83 E1 F600

G1 X1.17 Y4.83 E1 F600

G1 X1.17 Y1.26 E1 F600

G1 X28.74 Y1.26 E1 F600

G1 X28.74 Y4.74 E1 F600

G1 X1.26 Y4.74 E1 F600

G1 X1.26 Y1.35 E1 F600

G1 X28.65 Y1.35 E1 F600

G1 X28.65 Y4.65 E1 F600

G1 X1.35 Y4.65 E1 F600

G1 X1.35 Y1.44 E1 F600

G1 X28.56 Y1.44 E1 F600

G1 X28.56 Y4.56 E1 F600

G1 X1.44 Y4.56 E1 F600

G1 X1.44 Y1.53 E1 F600

G1 X28.47 Y1.53 E1 F600

G1 X28.47 Y4.47 E1 F600

G1 X1.53 Y4.47 E1 F600

G1 X1.53 Y1.62 E1 F600

G1 X28.38 Y1.62 E1 F600

G1 X28.38 Y4.38 E1 F600

G1 X1.62 Y4.38 E1 F600

G1 X1.62 Y1.71 E1 F600

G1 X28.29 Y1.71 E1 F600

G1 X28.29 Y4.29 E1 F600

G1 X1.71 Y4.29 E1 F600

G1 X1.71 Y1.8 E1 F600

G1 X28.2 Y1.8 E1 F600

G1 X28.2 Y4.2 E1 F600

G1 X1.8 Y4.2 E1 F600

G1 X1.8 Y1.89 E1 F600

G1 X28.11 Y1.89 E1 F600

G1 X28.11 Y4.11 E1 F600

G1 X1.89 Y4.11 E1 F600

G1 X1.89 Y1.98 E1 F600

G1 X28.02 Y1.98 E1 F600

G1 X28.02 Y4.02 E1 F600

G1 X1.98 Y4.02 E1 F600

G1 X1.98 Y2.07 E1 F600

G1 X27.93 Y2.07 E1 F600

G1 X27.93 Y3.93 E1 F600

G1 X2.07 Y3.93 E1 F600

G1 X2.07 Y2.16 E1 F600

G1 X27.84 Y2.16 E1 F600

G1 X27.84 Y3.84 E1 F600

G1 X2.16 Y3.84 E1 F600

G1 X2.16 Y2.25 E1 F600

G1 X27.75 Y2.25 E1 F600

G1 X27.75 Y3.75 E1 F600

G1 X2.25 Y3.75 E1 F600

G1 X2.25 Y2.34 E1 F600

G1 X27.66 Y2.34 E1 F600

G1 X27.66 Y3.66 E1 F600

G1 X2.34 Y3.66 E1 F600

G1 X2.34 Y2.43 E1 F600

G1 X27.57 Y2.43 E1 F600

G1 X27.57 Y3.57 E1 F600

G1 X2.43 Y3.57 E1 F600

G1 X2.43 Y2.52 E1 F600

G1 X27.48 Y2.52 E1 F600

G1 X27.48 Y3.48 E1 F600

G1 X2.52 Y3.48 E1 F600

G1 X2.52 Y2.61 E1 F600

G1 X27.39 Y2.61 E1 F600

G1 X27.39 Y3.39 E1 F600

G1 X2.61 Y3.39 E1 F600

G1 X2.61 Y2.7 E1 F600

G1 X27.3 Y2.7 E1 F600

G1 X27.3 Y3.3 E1 F600

G1 X2.7 Y3.3 E1 F600

G1 X2.7 Y2.79 E1 F600

G1 X27.21 Y2.79 E1 F600

G1 X27.21 Y3.21 E1 F600

G1 X2.79 Y3.21 E1 F600

G1 X2.79 Y2.895 E1 F600

G1 X27.12 Y2.895 E1 F600

G1 X27.12 Y3.105 E1 F600

G1 X2.88 Y3.105 E1 F600

G1 X2.88 Y3 E1 F600

G1 X27.03 Y3 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S44 ; bed : define temperature
M109 T12 S71 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G4 P0.000000 ; wait P[ms] between shapes
G0 X0 Y18 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F600
G1 X0 Y18 E1 F600
G1 X0 Y18 E1 F600
G1 X6 Y18 E1 F600

G1 X6 Y48 E1 F600

G1 X0 Y48 E1 F600

G1 X0 Y18.09 E1 F600

G1 X5.91 Y18.09 E1 F600

G1 X5.91 Y47.91 E1 F600

G1 X0.09 Y47.91 E1 F600

G1 X0.09 Y18.18 E1 F600

G1 X5.82 Y18.18 E1 F600

G1 X5.82 Y47.82 E1 F600

G1 X0.18 Y47.82 E1 F600

G1 X0.18 Y18.27 E1 F600

G1 X5.73 Y18.27 E1 F600

G1 X5.73 Y47.73 E1 F600

G1 X0.27 Y47.73 E1 F600

G1 X0.27 Y18.36 E1 F600

G1 X5.64 Y18.36 E1 F600

G1 X5.64 Y47.64 E1 F600

G1 X0.36 Y47.64 E1 F600

G1 X0.36 Y18.45 E1 F600

G1 X5.55 Y18.45 E1 F600

G1 X5.55 Y47.55 E1 F600

G1 X0.45 Y47.55 E1 F600

G1 X0.45 Y18.54 E1 F600

G1 X5.46 Y18.54 E1 F600

G1 X5.46 Y47.46 E1 F600

G1 X0.54 Y47.46 E1 F600

G1 X0.54 Y18.63 E1 F600

G1 X5.37 Y18.63 E1 F600

G1 X5.37 Y47.37 E1 F600

G1 X0.63 Y47.37 E1 F600

G1 X0.63 Y18.72 E1 F600

G1 X5.28 Y18.72 E1 F600

G1 X5.28 Y47.28 E1 F600

G1 X0.72 Y47.28 E1 F600

G1 X0.72 Y18.81 E1 F600

G1 X5.19 Y18.81 E1 F600

G1 X5.19 Y47.19 E1 F600

G1 X0.81 Y47.19 E1 F600

G1 X0.81 Y18.9 E1 F600

G1 X5.1 Y18.9 E1 F600

G1 X5.1 Y47.1 E1 F600

G1 X0.9 Y47.1 E1 F600

G1 X0.9 Y18.99 E1 F600

G1 X5.01 Y18.99 E1 F600

G1 X5.01 Y47.01 E1 F600

G1 X0.99 Y47.01 E1 F600

G1 X0.99 Y19.08 E1 F600

G1 X4.92 Y19.08 E1 F600

G1 X4.92 Y46.92 E1 F600

G1 X1.08 Y46.92 E1 F600

G1 X1.08 Y19.17 E1 F600

G1 X4.83 Y19.17 E1 F600

G1 X4.83 Y46.83 E1 F600

G1 X1.17 Y46.83 E1 F600

G1 X1.17 Y19.26 E1 F600

G1 X4.74 Y19.26 E1 F600

G1 X4.74 Y46.74 E1 F600

G1 X1.26 Y46.74 E1 F600

G1 X1.26 Y19.35 E1 F600

G1 X4.65 Y19.35 E1 F600

G1 X4.65 Y46.65 E1 F600

G1 X1.35 Y46.65 E1 F600

G1 X1.35 Y19.44 E1 F600

G1 X4.56 Y19.44 E1 F600

G1 X4.56 Y46.56 E1 F600

G1 X1.44 Y46.56 E1 F600

G1 X1.44 Y19.53 E1 F600

G1 X4.47 Y19.53 E1 F600

G1 X4.47 Y46.47 E1 F600

G1 X1.53 Y46.47 E1 F600

G1 X1.53 Y19.62 E1 F600

G1 X4.38 Y19.62 E1 F600

G1 X4.38 Y46.38 E1 F600

G1 X1.62 Y46.38 E1 F600

G1 X1.62 Y19.71 E1 F600

G1 X4.29 Y19.71 E1 F600

G1 X4.29 Y46.29 E1 F600

G1 X1.71 Y46.29 E1 F600

G1 X1.71 Y19.8 E1 F600

G1 X4.2 Y19.8 E1 F600

G1 X4.2 Y46.2 E1 F600

G1 X1.8 Y46.2 E1 F600

G1 X1.8 Y19.89 E1 F600

G1 X4.11 Y19.89 E1 F600

G1 X4.11 Y46.11 E1 F600

G1 X1.89 Y46.11 E1 F600

G1 X1.89 Y19.98 E1 F600

G1 X4.02 Y19.98 E1 F600

G1 X4.02 Y46.02 E1 F600

G1 X1.98 Y46.02 E1 F600

G1 X1.98 Y20.07 E1 F600

G1 X3.93 Y20.07 E1 F600

G1 X3.93 Y45.93 E1 F600

G1 X2.07 Y45.93 E1 F600

G1 X2.07 Y20.16 E1 F600

G1 X3.84 Y20.16 E1 F600

G1 X3.84 Y45.84 E1 F600

G1 X2.16 Y45.84 E1 F600

G1 X2.16 Y20.25 E1 F600

G1 X3.75 Y20.25 E1 F600

G1 X3.75 Y45.75 E1 F600

G1 X2.25 Y45.75 E1 F600

G1 X2.25 Y20.34 E1 F600

G1 X3.66 Y20.34 E1 F600

G1 X3.66 Y45.66 E1 F600

G1 X2.34 Y45.66 E1 F600

G1 X2.34 Y20.43 E1 F600

G1 X3.57 Y20.43 E1 F600

G1 X3.57 Y45.57 E1 F600

G1 X2.43 Y45.57 E1 F600

G1 X2.43 Y20.52 E1 F600

G1 X3.48 Y20.52 E1 F600

G1 X3.48 Y45.48 E1 F600

G1 X2.52 Y45.48 E1 F600

G1 X2.52 Y20.61 E1 F600

G1 X3.39 Y20.61 E1 F600

G1 X3.39 Y45.39 E1 F600

G1 X2.61 Y45.39 E1 F600

G1 X2.61 Y20.7 E1 F600

G1 X3.3 Y20.7 E1 F600

G1 X3.3 Y45.3 E1 F600

G1 X2.7 Y45.3 E1 F600

G1 X2.7 Y20.79 E1 F600

G1 X3.21 Y20.79 E1 F600

G1 X3.21 Y45.21 E1 F600

G1 X2.79 Y45.21 E1 F600

G1 X2.79 Y20.88 E1 F600

G1 X3.105 Y20.88 E1 F600

G1 X3.105 Y45.12 E1 F600

G1 X2.895 Y45.12 E1 F600

G1 X2.895 Y20.97 E1 F600

G1 X3 Y20.97 E1 F600

G1 X3 Y45.03 E1 F600


; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program