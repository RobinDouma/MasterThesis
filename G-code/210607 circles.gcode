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
M109 T12 S79 ; slot 1 : define temperature

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

G3 R10 E1 F120

G1 X5.3
G3 R9.7 E1 F120

G1 X5.6
G3 R9.4 E1 F120

G1 X5.9
G3 R9.1 E1 F120

G1 X6.2
G3 R8.8 E1 F120

G1 X6.5
G3 R8.5 E1 F120

G1 X6.8
G3 R8.2 E1 F120

G1 X7.1
G3 R7.9 E1 F120

G1 X7.4
G3 R7.6 E1 F120

G1 X7.7
G3 R7.3 E1 F120

G1 X8
G3 R7 E1 F120

G1 X8.3
G3 R6.7 E1 F120

G1 X8.6
G3 R6.4 E1 F120

G1 X8.9
G3 R6.1 E1 F120

G1 X9.2
G3 R5.8 E1 F120

G1 X9.5
G3 R5.5 E1 F120

G1 X9.8
G3 R5.2 E1 F120

G1 X10.1
G3 R4.9 E1 F120

G1 X10.4
G3 R4.6 E1 F120

G1 X10.7
G3 R4.3 E1 F120

G1 X11
G3 R4 E1 F120

G1 X11.3
G3 R3.7 E1 F120

G1 X11.6
G3 R3.4 E1 F120

G1 X11.9
G3 R3.1 E1 F120

G1 X12.2
G3 R2.8 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S68 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P1000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X30 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.05 E1 F120
G1 X30 Y0 E1 F120
G1 X35 Y0 E1 F120

G3 R10 E1 F120

M221 P1125 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.3
G3 R9.7 E1 F150

M221 P1250 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.6
G3 R9.4 E1 F180

M221 P1375 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X35.9
G3 R9.1 E1 F210

M221 P1500 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.2
G3 R8.8 E1 F240

M221 P1625 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.5
G3 R8.5 E1 F270

M221 P1750 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X36.8
G3 R8.2 E1 F300

M221 P1875 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X37.1
G3 R7.9 E1 F330

M221 P2000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X37.4
G3 R7.6 E1 F360

M221 P2125 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X37.7
G3 R7.3 E1 F390

M221 P2250 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X38
G3 R7 E1 F420

M221 P2375 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X38.3
G3 R6.7 E1 F450

M221 P2500 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X38.6
G3 R6.4 E1 F480

M221 P2625 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X38.9
G3 R6.1 E1 F510

M221 P2750 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X39.2
G3 R5.8 E1 F540

M221 P2875 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X39.5
G3 R5.5 E1 F570

M221 P3000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X39.8
G3 R5.2 E1 F600

M221 P3125 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X40.1
G3 R4.9 E1 F630

M221 P3250 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X40.4
G3 R4.6 E1 F660

M221 P3375 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X40.7
G3 R4.3 E1 F690

M221 P3500 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X41
G3 R4 E1 F720

M221 P3625 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X41.3
G3 R3.7 E1 F750

M221 P3750 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X41.6
G3 R3.4 E1 F780

M221 P3875 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X41.9
G3 R3.1 E1 F810

M221 P4000 S1.0 T12 Z0.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]
G1 X42.2
G3 R2.8 E1 F840

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program