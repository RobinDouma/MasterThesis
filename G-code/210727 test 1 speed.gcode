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
M109 T12 S65 ; slot 1 : define temperature

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
G1 Z0.08 E1 F240
G1 X0 Y0 E1 F240
G1 X5 Y0 E1 F240
G1 X25 Y0 E1 F240

G1 X25 Y4 E1 F240

G1 X5 Y4 E1 F240

G1 X5 Y0.25 E1 F240

G1 X24.75 Y0.25 E1 F240

G1 X24.75 Y3.75 E1 F240

G1 X5.25 Y3.75 E1 F240

G1 X5.25 Y0.5 E1 F240

G1 X24.5 Y0.5 E1 F240

G1 X24.5 Y3.5 E1 F240

G1 X5.5 Y3.5 E1 F240

G1 X5.5 Y0.75 E1 F240

G1 X24.25 Y0.75 E1 F240

G1 X24.25 Y3.25 E1 F240

G1 X5.75 Y3.25 E1 F240

G1 X5.75 Y1 E1 F240

G1 X24 Y1 E1 F240

G1 X24 Y3 E1 F240

G1 X6 Y3 E1 F240

G1 X6 Y1.25 E1 F240

G1 X23.75 Y1.25 E1 F240

G1 X23.75 Y2.75 E1 F240

G1 X6.25 Y2.75 E1 F240

G1 X6.25 Y1.5 E1 F240

G1 X23.5 Y1.5 E1 F240

G1 X23.5 Y2.5 E1 F240

G1 X6.5 Y2.5 E1 F240

G1 X6.5 Y1.75 E1 F240

G1 X23.25 Y1.75 E1 F240

G1 X23.25 Y2.25 E1 F240

G1 X6.75 Y2.25 E1 F240

G1 X6.75 Y2 E1 F240

G1 X23.25 Y2 E1 F240

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S65 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F360
G1 X0 Y0 E1 F360
G1 X5 Y0 E1 F360
G1 X25 Y0 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X25 Y4 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5 Y4 E1 F360

G1 X5 Y0.25 E1 F360

G1 X24.75 Y0.25 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.75 Y3.75 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.25 Y3.75 E1 F360

G1 X5.25 Y0.5 E1 F360

G1 X24.5 Y0.5 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.5 Y3.5 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.5 Y3.5 E1 F360

G1 X5.5 Y0.75 E1 F360

G1 X24.25 Y0.75 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24.25 Y3.25 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X5.75 Y3.25 E1 F360

G1 X5.75 Y1 E1 F360

G1 X24 Y1 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X24 Y3 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6 Y3 E1 F360

G1 X6 Y1.25 E1 F360

G1 X23.75 Y1.25 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.75 Y2.75 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.25 Y2.75 E1 F360

G1 X6.25 Y1.5 E1 F360

G1 X23.5 Y1.5 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.5 Y2.5 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.5 Y2.5 E1 F360

G1 X6.5 Y1.75 E1 F360

G1 X23.25 Y1.75 E1 F360

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X23.25 Y2.25 E1 F360.01

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X6.75 Y2.25 E1 F360

G1 X6.75 Y2 E1 F360

G1 X23.25 Y2 E1 F360

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S65 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F480
G1 X0 Y0 E1 F480
G1 X5 Y0 E1 F480
G1 X25 Y0 E1 F480

G1 X25 Y4 E1 F480

G1 X5 Y4 E1 F480

G1 X5 Y0.25 E1 F480

G1 X24.75 Y0.25 E1 F480

G1 X24.75 Y3.75 E1 F480

G1 X5.25 Y3.75 E1 F480

G1 X5.25 Y0.5 E1 F480

G1 X24.5 Y0.5 E1 F480

G1 X24.5 Y3.5 E1 F480

G1 X5.5 Y3.5 E1 F480

G1 X5.5 Y0.75 E1 F480

G1 X24.25 Y0.75 E1 F480

G1 X24.25 Y3.25 E1 F480

G1 X5.75 Y3.25 E1 F480

G1 X5.75 Y1 E1 F480

G1 X24 Y1 E1 F480

G1 X24 Y3 E1 F480

G1 X6 Y3 E1 F480

G1 X6 Y1.25 E1 F480

G1 X23.75 Y1.25 E1 F480

G1 X23.75 Y2.75 E1 F480

G1 X6.25 Y2.75 E1 F480

G1 X6.25 Y1.5 E1 F480

G1 X23.5 Y1.5 E1 F480

G1 X23.5 Y2.5 E1 F480

G1 X6.5 Y2.5 E1 F480

G1 X6.5 Y1.75 E1 F480

G1 X23.25 Y1.75 E1 F480

G1 X23.25 Y2.25 E1 F480

G1 X6.75 Y2.25 E1 F480

G1 X6.75 Y2 E1 F480

G1 X23.25 Y2 E1 F480

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S65 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.08 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.08 E1 F600
G1 X0 Y0 E1 F600
G1 X5 Y0 E1 F600
G1 X25 Y0 E1 F600

G1 X25 Y4 E1 F600

G1 X5 Y4 E1 F600

G1 X5 Y0.25 E1 F600

G1 X24.75 Y0.25 E1 F600

G1 X24.75 Y3.75 E1 F600

G1 X5.25 Y3.75 E1 F600

G1 X5.25 Y0.5 E1 F600

G1 X24.5 Y0.5 E1 F600

G1 X24.5 Y3.5 E1 F600

G1 X5.5 Y3.5 E1 F600

G1 X5.5 Y0.75 E1 F600

G1 X24.25 Y0.75 E1 F600

G1 X24.25 Y3.25 E1 F600

G1 X5.75 Y3.25 E1 F600

G1 X5.75 Y1 E1 F600

G1 X24 Y1 E1 F600

G1 X24 Y3 E1 F600

G1 X6 Y3 E1 F600

G1 X6 Y1.25 E1 F600

G1 X23.75 Y1.25 E1 F600

G1 X23.75 Y2.75 E1 F600

G1 X6.25 Y2.75 E1 F600

G1 X6.25 Y1.5 E1 F600

G1 X23.5 Y1.5 E1 F600

G1 X23.5 Y2.5 E1 F600

G1 X6.5 Y2.5 E1 F600

G1 X6.5 Y1.75 E1 F600

G1 X23.25 Y1.75 E1 F600

G1 X23.25 Y2.25 E1 F600

G1 X6.75 Y2.25 E1 F600

G1 X6.75 Y2 E1 F600

G1 X23.25 Y2 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S65 ; slot 1 : define temperature

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

G1 X25 Y4 E1 F720

G1 X5 Y4 E1 F720

G1 X5 Y0.25 E1 F720

G1 X24.75 Y0.25 E1 F720

G1 X24.75 Y3.75 E1 F720

G1 X5.25 Y3.75 E1 F720

G1 X5.25 Y0.5 E1 F720

G1 X24.5 Y0.5 E1 F720

G1 X24.5 Y3.5 E1 F720

G1 X5.5 Y3.5 E1 F720

G1 X5.5 Y0.75 E1 F720

G1 X24.25 Y0.75 E1 F720

G1 X24.25 Y3.25 E1 F720

G1 X5.75 Y3.25 E1 F720

G1 X5.75 Y1 E1 F720

G1 X24 Y1 E1 F720

G1 X24 Y3 E1 F720

G1 X6 Y3 E1 F720

G1 X6 Y1.25 E1 F720

G1 X23.75 Y1.25 E1 F720

G1 X23.75 Y2.75 E1 F720

G1 X6.25 Y2.75 E1 F720

G1 X6.25 Y1.5 E1 F720

G1 X23.5 Y1.5 E1 F720

G1 X23.5 Y2.5 E1 F720

G1 X6.5 Y2.5 E1 F720

G1 X6.5 Y1.75 E1 F720

G1 X23.25 Y1.75 E1 F720

G1 X23.25 Y2.25 E1 F720

G1 X6.75 Y2.25 E1 F720

G1 X6.75 Y2 E1 F720

G1 X23.25 Y2 E1 F720

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 6 STARTS HERE

; INITIALIZATION : PRINTING
M190 S51 ; bed : define temperature
M109 T12 S65 ; slot 1 : define temperature

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

G1 X25 Y4 E1 F840

G1 X5 Y4 E1 F840

G1 X5 Y0.25 E1 F840

G1 X24.75 Y0.25 E1 F840

G1 X24.75 Y3.75 E1 F840

G1 X5.25 Y3.75 E1 F840

G1 X5.25 Y0.5 E1 F840

G1 X24.5 Y0.5 E1 F840

G1 X24.5 Y3.5 E1 F840

G1 X5.5 Y3.5 E1 F840

G1 X5.5 Y0.75 E1 F840

G1 X24.25 Y0.75 E1 F840

G1 X24.25 Y3.25 E1 F840

G1 X5.75 Y3.25 E1 F840

G1 X5.75 Y1 E1 F840

G1 X24 Y1 E1 F840

G1 X24 Y3 E1 F840

G1 X6 Y3 E1 F840

G1 X6 Y1.25 E1 F840

G1 X23.75 Y1.25 E1 F840

G1 X23.75 Y2.75 E1 F840

G1 X6.25 Y2.75 E1 F840

G1 X6.25 Y1.5 E1 F840

G1 X23.5 Y1.5 E1 F840

G1 X23.5 Y2.5 E1 F840

G1 X6.5 Y2.5 E1 F840

G1 X6.5 Y1.75 E1 F840

G1 X23.25 Y1.75 E1 F840

G1 X23.25 Y2.25 E1 F840

G1 X6.75 Y2.25 E1 F840

G1 X6.75 Y2 E1 F840

G1 X23.25 Y2 E1 F840

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program