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

M6 T12 O2 X70 Y40 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

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
G3 X5 Y0 I15 J0 E1 F120

G0 X5.2
G3 X5.2 Y0 I15 J0 E1 F120

G0 X5.4
G3 X5.4 Y0 I15 J0 E1 F120

G0 X5.6
G3 X5.6 Y0 I15 J0 E1 F120

G0 X5.8
G3 X5.8 Y0 I15 J0 E1 F120

G0 X6
G3 X6 Y0 I15 J0 E1 F120

G0 X6.2
G3 X6.2 Y0 I15 J0 E1 F120

G0 X6.4
G3 X6.4 Y0 I15 J0 E1 F120

G0 X6.6
G3 X6.6 Y0 I15 J0 E1 F120

G0 X6.8
G3 X6.8 Y0 I15 J0 E1 F120

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

M221 P1000 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X30 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P1200000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.03 E1 F120
G1 X30 Y0 E1 F120
G1 X35 Y0 E1 F120

G3 X35 Y0 I20 J0 E1 F120

M221 P1000 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X35.2
G3 X35.2 Y0 I20 J0 E1 F136.622

M221 P1138.52 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X35.4
G3 X35.4 Y0 I20 J0 E1 F155.547

M221 P1296.22 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X35.6
G3 X35.6 Y0 I20 J0 E1 F177.093

M221 P1475.77 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X35.8
G3 X35.8 Y0 I20 J0 E1 F201.623

M221 P1680.19 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X36
G3 X36 Y0 I20 J0 E1 F229.552

M221 P1912.93 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X36.2
G3 X36.2 Y0 I20 J0 E1 F261.349

M221 P2177.91 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X36.4
G3 X36.4 Y0 I20 J0 E1 F297.55

M221 P2479.59 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X36.6
G3 X36.6 Y0 I20 J0 E1 F338.766

M221 P2823.05 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X36.8
G3 X36.8 Y0 I20 J0 E1 F385.692

M221 P3214.1 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X37
G3 X37 Y0 I20 J0 E1 F439.117

M221 P3659.31 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X37.2
G3 X37.2 Y0 I20 J0 E1 F499.942

M221 P4166.19 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X37.4
G3 X37.4 Y0 I20 J0 E1 F569.193

M221 P4743.28 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X37.6
G3 X37.6 Y0 I20 J0 E1 F648.037

M221 P5400.31 S1.0 T12 Z0.03 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X37.8
G3 X37.8 Y0 I20 J0 E1 F737.801

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

M221 P1000 S1.0 T12 Z0.05 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X70 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P1200000.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X70 Y0 E1 F120
G1 X75 Y0 E1 F120

G3 X75 Y0 I15 J0 E1 F120

G1 Z0.06 E1 F136.8
M221 P1000 S1.0 T12 Z0.06 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P1000 S1.0 T12 Z0.06 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X75.2
G3 X75.2 Y0 I15 J0 E1 F136.8

G1 Z0.07 E1 F155.952
M221 P1140 S1.0 T12 Z0.07 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P1140 S1.0 T12 Z0.07 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X75.4
G3 X75.4 Y0 I15 J0 E1 F155.952

G1 Z0.08 E1 F177.785
M221 P1299.6 S1.0 T12 Z0.08 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P1299.6 S1.0 T12 Z0.08 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X75.6
G3 X75.6 Y0 I15 J0 E1 F177.785

G1 Z0.09 E1 F202.675
M221 P1481.54 S1.0 T12 Z0.09 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P1481.54 S1.0 T12 Z0.09 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X75.8
G3 X75.8 Y0 I15 J0 E1 F202.675

G1 Z0.1 E1 F231.05
M221 P1688.96 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P1688.96 S1.0 T12 Z0.1 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X76
G3 X76 Y0 I15 J0 E1 F231.05

G1 Z0.11 E1 F263.397
M221 P1925.41 S1.0 T12 Z0.11 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P1925.41 S1.0 T12 Z0.11 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X76.2
G3 X76.2 Y0 I15 J0 E1 F263.397

G1 Z0.12 E1 F300.272
M221 P2194.97 S1.0 T12 Z0.12 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P2194.97 S1.0 T12 Z0.12 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X76.4
G3 X76.4 Y0 I15 J0 E1 F300.272

G1 Z0.13 E1 F342.31
M221 P2502.27 S1.0 T12 Z0.13 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P2502.27 S1.0 T12 Z0.13 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X76.6
G3 X76.6 Y0 I15 J0 E1 F342.31

G1 Z0.14 E1 F390.234
M221 P2852.59 S1.0 T12 Z0.14 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
M221 P2852.59 S1.0 T12 Z0.14 W0.233  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G0 X76.8
G3 X76.8 Y0 I15 J0 E1 F390.234

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program