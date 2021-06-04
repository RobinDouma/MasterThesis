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

M6 T12 O2 X60 Y40 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X10 Y0 E1 F360

G1 X15 Y0 E1 F600

G1 X20 Y0 E1 F840

G1 X25 Y0 E1 F1080

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

M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y2 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P30000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X0 Y2 E1 F120
G1 X5 Y2 E1 F120

M221 P1000 S2 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X10 Y2 E1 F360

M221 P1000 S3 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X15 Y2 E1 F600

M221 P1000 S4 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X20 Y2 E1 F840

M221 P1000 S5 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y2 E1 F1080

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y4 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P30000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X0 Y4 E1 F120
G1 X5 Y4 E1 F120

M221 P2000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X10 Y4 E1 F360

M221 P3000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X15 Y4 E1 F600

M221 P4000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X20 Y4 E1 F840

M221 P5000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y4 E1 F1080

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y6 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P30000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X0 Y6 E1 F120
G1 X5 Y6 E1 F120

M221 P2000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X10 Y6 E1 F360

M221 P4000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X15 Y6 E1 F600

M221 P8000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X20 Y6 E1 F840

M221 P16000 S1 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y6 E1 F1080

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y8 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P30000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X0 Y8 E1 F120
G1 X5 Y8 E1 F120

M221 P1000 S2 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X10 Y8 E1 F360

M221 P1000 S4 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X15 Y8 E1 F600

M221 P1000 S8 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X20 Y8 E1 F840

M221 P1000 S16 T12 Z0.05 W0.233  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y8 E1 F1080

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program