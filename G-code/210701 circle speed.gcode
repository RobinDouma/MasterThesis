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

M190 S68 ; bed : define temperature
M109 T12 S81 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P3000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

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

G1 X5.2 E1 F120
G3 I4.8 E1 F120

G1 X5.4 E1 F120
G3 I4.6 E1 F120

G1 X5.6 E1 F120
G3 I4.4 E1 F120

G1 X5.8 E1 F120
G3 I4.2 E1 F120

G1 X6 E1 F120
G3 I4 E1 F120

G1 X6.2 E1 F120
G3 I3.8 E1 F120

G1 X6.4 E1 F120
G3 I3.6 E1 F120

G1 X6.6 E1 F120
G3 I3.4 E1 F120

G1 X6.8 E1 F120
G3 I3.2 E1 F120

G1 X7 E1 F120
G3 I3 E1 F120

G1 X7.2 E1 F120
G3 I2.8 E1 F120

G1 X7.4 E1 F120
G3 I2.6 E1 F120

G1 X7.6 E1 F120
G3 I2.4 E1 F120

G1 X7.8 E1 F120
G3 I2.2 E1 F120

G1 X8 E1 F120
G3 I2 E1 F120

G1 X8.2 E1 F120
G3 I1.8 E1 F120

G1 X8.4 E1 F120
G3 I1.6 E1 F120

G1 X8.6 E1 F120
G3 I1.4 E1 F120

G1 X8.8 E1 F120
G3 I1.2 E1 F120

G1 X9 E1 F120
G3 I1 E1 F120

G1 X9.2 E1 F120
G3 I0.8 E1 F120

G1 X9.4 E1 F120
G3 I0.6 E1 F120

G1 X9.6 E1 F120
G3 I0.4 E1 F120

G1 X9.8 E1 F120
G3 I0.2 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S81 ; slot 1 : define temperature

M221 P6000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X17 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F240
G1 X17 Y0 E1 F240
G1 X22 Y0 E1 F240

G3 I5 E1 F240

G1 X22.2 E1 F240
G3 I4.8 E1 F240

G1 X22.4 E1 F240
G3 I4.6 E1 F240

G1 X22.6 E1 F240
G3 I4.4 E1 F240

G1 X22.8 E1 F240
G3 I4.2 E1 F240

G1 X23 E1 F240
G3 I4 E1 F240

G1 X23.2 E1 F240
G3 I3.8 E1 F240

G1 X23.4 E1 F240
G3 I3.6 E1 F240

G1 X23.6 E1 F240
G3 I3.4 E1 F240

G1 X23.8 E1 F240
G3 I3.2 E1 F240

G1 X24 E1 F240
G3 I3 E1 F240

G1 X24.2 E1 F240
G3 I2.8 E1 F240

G1 X24.4 E1 F240
G3 I2.6 E1 F240

G1 X24.6 E1 F240
G3 I2.4 E1 F240

G1 X24.8 E1 F240
G3 I2.2 E1 F240

G1 X25 E1 F240
G3 I2 E1 F240

G1 X25.2 E1 F240
G3 I1.8 E1 F240

G1 X25.4 E1 F240
G3 I1.6 E1 F240

G1 X25.6 E1 F240
G3 I1.4 E1 F240

G1 X25.8 E1 F240
G3 I1.2 E1 F240

G1 X26 E1 F240
G3 I1 E1 F240

G1 X26.2 E1 F240
G3 I0.8 E1 F240

G1 X26.4 E1 F240
G3 I0.6 E1 F240

G1 X26.6 E1 F240
G3 I0.4 E1 F240

G1 X26.8 E1 F240
G3 I0.2 E1 F240

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S81 ; slot 1 : define temperature

M221 P9000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X34 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F360
G1 X34 Y0 E1 F360
G1 X39 Y0 E1 F360

G3 I5 E1 F360

G1 X39.2 E1 F360
G3 I4.8 E1 F360

G1 X39.4 E1 F360
G3 I4.6 E1 F360

G1 X39.6 E1 F360
G3 I4.4 E1 F360

G1 X39.8 E1 F360
G3 I4.2 E1 F360

G1 X40 E1 F360
G3 I4 E1 F360

G1 X40.2 E1 F360
G3 I3.8 E1 F360

G1 X40.4 E1 F360
G3 I3.6 E1 F360

G1 X40.6 E1 F360
G3 I3.4 E1 F360

G1 X40.8 E1 F360
G3 I3.2 E1 F360

G1 X41 E1 F360
G3 I3 E1 F360

G1 X41.2 E1 F360
G3 I2.8 E1 F360

G1 X41.4 E1 F360
G3 I2.6 E1 F360

G1 X41.6 E1 F360
G3 I2.4 E1 F360

G1 X41.8 E1 F360
G3 I2.2 E1 F360

G1 X42 E1 F360
G3 I2 E1 F360

G1 X42.2 E1 F360
G3 I1.8 E1 F360

G1 X42.4 E1 F360
G3 I1.6 E1 F360

G1 X42.6 E1 F360
G3 I1.4 E1 F360

G1 X42.8 E1 F360
G3 I1.2 E1 F360

G1 X43 E1 F360
G3 I1 E1 F360

G1 X43.2 E1 F360
G3 I0.8 E1 F360

G1 X43.4 E1 F360
G3 I0.6 E1 F360

G1 X43.6 E1 F360
G3 I0.4 E1 F360

G1 X43.8 E1 F360
G3 I0.2 E1 F360

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S81 ; slot 1 : define temperature

M221 P12000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/�l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X51 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F480
G1 X51 Y0 E1 F480
G1 X56 Y0 E1 F480

G3 I5 E1 F480

G1 X56.2 E1 F480
G3 I4.8 E1 F480

G1 X56.4 E1 F480
G3 I4.6 E1 F480

G1 X56.6 E1 F480
G3 I4.4 E1 F480

G1 X56.8 E1 F480
G3 I4.2 E1 F480

G1 X57 E1 F480
G3 I4 E1 F480

G1 X57.2 E1 F480
G3 I3.8 E1 F480

G1 X57.4 E1 F480
G3 I3.6 E1 F480

G1 X57.6 E1 F480
G3 I3.4 E1 F480

G1 X57.8 E1 F480
G3 I3.2 E1 F480

G1 X58 E1 F480
G3 I3 E1 F480

G1 X58.2 E1 F480
G3 I2.8 E1 F480

G1 X58.4 E1 F480
G3 I2.6 E1 F480

G1 X58.6 E1 F480
G3 I2.4 E1 F480

G1 X58.8 E1 F480
G3 I2.2 E1 F480

G1 X59 E1 F480
G3 I2 E1 F480

G1 X59.2 E1 F480
G3 I1.8 E1 F480

G1 X59.4 E1 F480
G3 I1.6 E1 F480

G1 X59.6 E1 F480
G3 I1.4 E1 F480

G1 X59.8 E1 F480
G3 I1.2 E1 F480

G1 X60 E1 F480
G3 I1 E1 F480

G1 X60.2 E1 F480
G3 I0.8 E1 F480

G1 X60.4 E1 F480
G3 I0.6 E1 F480

G1 X60.6 E1 F480
G3 I0.4 E1 F480

G1 X60.8 E1 F480
G3 I0.2 E1 F480

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program