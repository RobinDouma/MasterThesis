; INITIALIZATION : GENERAL
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

G21 ; set units : mm
G90 ; coordinates printing : absolute
M82 ; coordinates extrusion : absolute

; INITIALIZATION : PRINTING
M660 H2 Z60 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X98 Y40 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F120
G1 X0 Y0 E1 F120
G1 X5 Y0 E1 F120
G1 X85 Y0 E1 F120
G1 X85 Y40 E1 F360
G1 X5 Y40 E1 F600
G1 X5 Y0.5 E1 F840
G1 Z0.11 E1 F120
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X84.5 Y0.5 E1 F120
G1 X84.5 Y39.5 E1 F360
G1 X5.5 Y39.5 E1 F600
G1 X5.5 Y1 E1 F840
G1 Z0.12 E1 F120
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X84 Y1 E1 F120
G1 X84 Y39 E1 F360
G1 X6 Y39 E1 F600
G1 X6 Y1.5 E1 F840
G1 Z0.13 E1 F120
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X83.5 Y1.5 E1 F120
G1 X83.5 Y38.5 E1 F360
G1 X6.5 Y38.5 E1 F600
G1 X6.5 Y2 E1 F840
G1 Z0.14 E1 F120
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X83 Y2 E1 F120
G1 X83 Y38 E1 F360
G1 X7 Y38 E1 F600
G1 X7 Y2.5 E1 F840
G1 Z0.15 E1 F120
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X82.5 Y2.5 E1 F120
G1 X82.5 Y37.5 E1 F360
G1 X7.5 Y37.5 E1 F600
G1 X7.5 Y3 E1 F840
G1 Z0.16 E1 F120
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X82 Y3 E1 F120
G1 X82 Y37 E1 F360
G1 X8 Y37 E1 F600
G1 X8 Y3.5 E1 F840
G1 Z0.17 E1 F120
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X81.5 Y3.5 E1 F120
G1 X81.5 Y36.5 E1 F360
G1 X8.5 Y36.5 E1 F600
G1 X8.5 Y4 E1 F840
G1 Z0.18 E1 F120
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X81 Y4 E1 F120
G1 X81 Y36 E1 F360
G1 X9 Y36 E1 F600
G1 X9 Y4.5 E1 F840
G1 Z0.19 E1 F120
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X80.5 Y4.5 E1 F120
G1 X80.5 Y35.5 E1 F360
G1 X9.5 Y35.5 E1 F600
G1 X9.5 Y5 E1 F840
G1 Z0.2 E1 F120
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X80 Y5 E1 F120
G1 X80 Y35 E1 F360
G1 X10 Y35 E1 F600
G1 X10 Y5.5 E1 F840
G1 Z0.21 E1 F120
M221 P2000 S1.0 T12 Z0.21 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X79.5 Y5.5 E1 F120
G1 X79.5 Y34.5 E1 F360
G1 X10.5 Y34.5 E1 F600
G1 X10.5 Y6 E1 F840
G1 Z0.22 E1 F120
M221 P2000 S1.0 T12 Z0.22 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X79 Y6 E1 F120
G1 X79 Y34 E1 F360
G1 X11 Y34 E1 F600
G1 X11 Y6.5 E1 F840
G1 Z0.23 E1 F120
M221 P2000 S1.0 T12 Z0.23 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X78.5 Y6.5 E1 F120
G1 X78.5 Y33.5 E1 F360
G1 X11.5 Y33.5 E1 F600
G1 X11.5 Y7 E1 F840
G1 Z0.24 E1 F120
M221 P2000 S1.0 T12 Z0.24 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X78 Y7 E1 F120
G1 X78 Y33 E1 F360
G1 X12 Y33 E1 F600
G1 X12 Y7.5 E1 F840
G1 Z0.25 E1 F120
M221 P2000 S1.0 T12 Z0.25 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45 Y20 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M190 S50 ; bed : define temperature
M109 T12 S50 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y50 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.2 E1 F120
G1 X0 Y50 E1 F120
G1 X10 Y50 E1 F120
G1 X50 Y50 E1 F120
G1 X50 Y130 E1 F120
G1 X10 Y130 E1 F120
G1 X10 Y50.8 E1 F120
G1 Z0.23 E1 F120
M221 P2000 S1.0 T12 Z0.23 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X49.2 Y50.8 E1 F240
G1 X49.2 Y129.2 E1 F360
G1 X10.8 Y129.2 E1 F480
G1 X10.8 Y51.6 E1 F600
G1 Z0.26 E1 F240
M221 P2000 S1.0 T12 Z0.26 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X48.4 Y51.6 E1 F480
G1 X48.4 Y128.4 E1 F1080
G1 X11.6 Y128.4 E1 F1920
G1 X11.6 Y52.4 E1 F3000
G1 Z0.29 E1 F480
M221 P2000 S1.0 T12 Z0.29 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X47.6 Y52.4 E1 F960
G1 X47.6 Y127.6 E1 F3240
G1 X12.4 Y127.6 E1 F7680
G1 X12.4 Y53.2 E1 F15000
G1 Z0.32 E1 F960
M221 P2000 S1.0 T12 Z0.32 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46.8 Y53.2 E1 F1920
G1 X46.8 Y126.8 E1 F9720
G1 X13.2 Y126.8 E1 F30720
G1 X13.2 Y54 E1 F75000
G1 Z0.35 E1 F1920
M221 P2000 S1.0 T12 Z0.35 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46 Y54 E1 F3840
G1 X46 Y126 E1 F29160
G1 X14 Y126 E1 F122880
G1 X14 Y54.8 E1 F375000
G1 Z0.38 E1 F3840
M221 P2000 S1.0 T12 Z0.38 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45.2 Y54.8 E1 F7680
G1 X45.2 Y125.2 E1 F87480
G1 X14.8 Y125.2 E1 F491520
G1 X14.8 Y55.6 E1 F1.875e+06
G1 Z0.41 E1 F7680
M221 P2000 S1.0 T12 Z0.41 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.4 Y55.6 E1 F15360
G1 X44.4 Y124.4 E1 F262440
G1 X15.6 Y124.4 E1 F1.96608e+06
G1 X15.6 Y56.4 E1 F9.375e+06
G1 Z0.44 E1 F15360
M221 P2000 S1.0 T12 Z0.44 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.6 Y56.4 E1 F30720
G1 X43.6 Y123.6 E1 F787320
G1 X16.4 Y123.6 E1 F7.86432e+06
G1 X16.4 Y57.2 E1 F4.6875e+07
G1 Z0.47 E1 F30720
M221 P2000 S1.0 T12 Z0.47 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.8 Y57.2 E1 F61440
G1 X42.8 Y122.8 E1 F2.36196e+06
G1 X17.2 Y122.8 E1 F3.14573e+07
G1 X17.2 Y58 E1 F2.34375e+08
G1 Z0.5 E1 F61440
M221 P2000 S1.0 T12 Z0.5 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X30 Y90 E1 F122880

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program