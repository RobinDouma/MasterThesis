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
G1 X0 Y0 E1 F120
G1 X5 Y0 E1 F120
G1 X45 Y0 E1 F120
G1 X45 Y40 E1 F360
G1 X5 Y40 E1 F600
G1 X5 Y0.1 E1 F840
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.9 Y0.1 E1 F120
G1 X44.9 Y39.9 E1 F360
G1 X5.1 Y39.9 E1 F600
G1 X5.1 Y0.2 E1 F840
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.8 Y0.2 E1 F120
G1 X44.8 Y39.8 E1 F360
G1 X5.2 Y39.8 E1 F600
G1 X5.2 Y0.3 E1 F840
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.7 Y0.3 E1 F120
G1 X44.7 Y39.7 E1 F360
G1 X5.3 Y39.7 E1 F600
G1 X5.3 Y0.4 E1 F840
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.6 Y0.4 E1 F120
G1 X44.6 Y39.6 E1 F360
G1 X5.4 Y39.6 E1 F600
G1 X5.4 Y0.5 E1 F840
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.5 Y0.5 E1 F120
G1 X44.5 Y39.5 E1 F360
G1 X5.5 Y39.5 E1 F600
G1 X5.5 Y0.6 E1 F840
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.4 Y0.6 E1 F120
G1 X44.4 Y39.4 E1 F360
G1 X5.6 Y39.4 E1 F600
G1 X5.6 Y0.7 E1 F840
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.3 Y0.7 E1 F120
G1 X44.3 Y39.3 E1 F360
G1 X5.7 Y39.3 E1 F600
G1 X5.7 Y0.8 E1 F840
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.2 Y0.8 E1 F120
G1 X44.2 Y39.2 E1 F360
G1 X5.8 Y39.2 E1 F600
G1 X5.8 Y0.9 E1 F840
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.1 Y0.9 E1 F120
G1 X44.1 Y39.1 E1 F360
G1 X5.9 Y39.1 E1 F600
G1 X5.9 Y1 E1 F840
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44 Y1 E1 F120
G1 X44 Y39 E1 F360
G1 X6 Y39 E1 F600
G1 X6 Y1.1 E1 F840
M221 P2000 S1.0 T12 Z0.21 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.9 Y1.1 E1 F120
G1 X43.9 Y38.9 E1 F360
G1 X6.1 Y38.9 E1 F600
G1 X6.1 Y1.2 E1 F840
M221 P2000 S1.0 T12 Z0.22 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.8 Y1.2 E1 F120
G1 X43.8 Y38.8 E1 F360
G1 X6.2 Y38.8 E1 F600
G1 X6.2 Y1.3 E1 F840
M221 P2000 S1.0 T12 Z0.23 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.7 Y1.3 E1 F120
G1 X43.7 Y38.7 E1 F360
G1 X6.3 Y38.7 E1 F600
G1 X6.3 Y1.4 E1 F840
M221 P2000 S1.0 T12 Z0.24 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.6 Y1.4 E1 F120
G1 X43.6 Y38.6 E1 F360
G1 X6.4 Y38.6 E1 F600
G1 X6.4 Y1.5 E1 F840
M221 P2000 S1.0 T12 Z0.25 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.5 Y1.5 E1 F120
G1 X43.5 Y38.5 E1 F360
G1 X6.5 Y38.5 E1 F600
G1 X6.5 Y1.6 E1 F840
M221 P2000 S1.0 T12 Z0.26 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.4 Y1.6 E1 F120
G1 X43.4 Y38.4 E1 F360
G1 X6.6 Y38.4 E1 F600
G1 X6.6 Y1.7 E1 F840
M221 P2000 S1.0 T12 Z0.27 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.3 Y1.7 E1 F120
G1 X43.3 Y38.3 E1 F360
G1 X6.7 Y38.3 E1 F600
G1 X6.7 Y1.8 E1 F840
M221 P2000 S1.0 T12 Z0.28 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.2 Y1.8 E1 F120
G1 X43.2 Y38.2 E1 F360
G1 X6.8 Y38.2 E1 F600
G1 X6.8 Y1.9 E1 F840
M221 P2000 S1.0 T12 Z0.29 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.1 Y1.9 E1 F120
G1 X43.1 Y38.1 E1 F360
G1 X6.9 Y38.1 E1 F600
G1 X6.9 Y2 E1 F840
M221 P2000 S1.0 T12 Z0.3 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43 Y2 E1 F120
G1 X43 Y38 E1 F360
G1 X7 Y38 E1 F600
G1 X7 Y2.1 E1 F840
M221 P2000 S1.0 T12 Z0.31 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.9 Y2.1 E1 F120
G1 X42.9 Y37.9 E1 F360
G1 X7.1 Y37.9 E1 F600
G1 X7.1 Y2.2 E1 F840
M221 P2000 S1.0 T12 Z0.32 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.8 Y2.2 E1 F120
G1 X42.8 Y37.8 E1 F360
G1 X7.2 Y37.8 E1 F600
G1 X7.2 Y2.3 E1 F840
M221 P2000 S1.0 T12 Z0.33 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.7 Y2.3 E1 F120
G1 X42.7 Y37.7 E1 F360
G1 X7.3 Y37.7 E1 F600
G1 X7.3 Y2.4 E1 F840
M221 P2000 S1.0 T12 Z0.34 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.6 Y2.4 E1 F120
G1 X42.6 Y37.6 E1 F360
G1 X7.4 Y37.6 E1 F600
G1 X7.4 Y2.5 E1 F840
M221 P2000 S1.0 T12 Z0.35 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.5 Y2.5 E1 F120
G1 X42.5 Y37.5 E1 F360
G1 X7.5 Y37.5 E1 F600
G1 X7.5 Y2.6 E1 F840
M221 P2000 S1.0 T12 Z0.36 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.4 Y2.6 E1 F120
G1 X42.4 Y37.4 E1 F360
G1 X7.6 Y37.4 E1 F600
G1 X7.6 Y2.7 E1 F840
M221 P2000 S1.0 T12 Z0.37 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.3 Y2.7 E1 F120
G1 X42.3 Y37.3 E1 F360
G1 X7.7 Y37.3 E1 F600
G1 X7.7 Y2.8 E1 F840
M221 P2000 S1.0 T12 Z0.38 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.2 Y2.8 E1 F120
G1 X42.2 Y37.2 E1 F360
G1 X7.8 Y37.2 E1 F600
G1 X7.8 Y2.9 E1 F840
M221 P2000 S1.0 T12 Z0.39 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.1 Y2.9 E1 F120
G1 X42.1 Y37.1 E1 F360
G1 X7.9 Y37.1 E1 F600
G1 X7.9 Y3 E1 F840
M221 P2000 S1.0 T12 Z0.4 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42 Y3 E1 F120
G1 X42 Y37 E1 F360
G1 X8 Y37 E1 F600
G1 X8 Y3.1 E1 F840
M221 P2000 S1.0 T12 Z0.41 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.9 Y3.1 E1 F120
G1 X41.9 Y36.9 E1 F360
G1 X8.1 Y36.9 E1 F600
G1 X8.1 Y3.2 E1 F840
M221 P2000 S1.0 T12 Z0.42 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.8 Y3.2 E1 F120
G1 X41.8 Y36.8 E1 F360
G1 X8.2 Y36.8 E1 F600
G1 X8.2 Y3.3 E1 F840
M221 P2000 S1.0 T12 Z0.43 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.7 Y3.3 E1 F120
G1 X41.7 Y36.7 E1 F360
G1 X8.3 Y36.7 E1 F600
G1 X8.3 Y3.4 E1 F840
M221 P2000 S1.0 T12 Z0.44 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.6 Y3.4 E1 F120
G1 X41.6 Y36.6 E1 F360
G1 X8.4 Y36.6 E1 F600
G1 X8.4 Y3.5 E1 F840
M221 P2000 S1.0 T12 Z0.45 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.5 Y3.5 E1 F120
G1 X41.5 Y36.5 E1 F360
G1 X8.5 Y36.5 E1 F600
G1 X8.5 Y3.6 E1 F840
M221 P2000 S1.0 T12 Z0.46 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.4 Y3.6 E1 F120
G1 X41.4 Y36.4 E1 F360
G1 X8.6 Y36.4 E1 F600
G1 X8.6 Y3.7 E1 F840
M221 P2000 S1.0 T12 Z0.47 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.3 Y3.7 E1 F120
G1 X41.3 Y36.3 E1 F360
G1 X8.7 Y36.3 E1 F600
G1 X8.7 Y3.8 E1 F840
M221 P2000 S1.0 T12 Z0.48 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.2 Y3.8 E1 F120
G1 X41.2 Y36.2 E1 F360
G1 X8.8 Y36.2 E1 F600
G1 X8.8 Y3.9 E1 F840
M221 P2000 S1.0 T12 Z0.49 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.1 Y3.9 E1 F120
G1 X41.1 Y36.1 E1 F360
G1 X8.9 Y36.1 E1 F600
G1 X8.9 Y4 E1 F840
M221 P2000 S1.0 T12 Z0.5 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41 Y4 E1 F120
G1 X41 Y36 E1 F360
G1 X9 Y36 E1 F600
G1 X9 Y4.1 E1 F840
M221 P2000 S1.0 T12 Z0.51 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.9 Y4.1 E1 F120
G1 X40.9 Y35.9 E1 F360
G1 X9.1 Y35.9 E1 F600
G1 X9.1 Y4.2 E1 F840
M221 P2000 S1.0 T12 Z0.52 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.8 Y4.2 E1 F120
G1 X40.8 Y35.8 E1 F360
G1 X9.2 Y35.8 E1 F600
G1 X9.2 Y4.3 E1 F840
M221 P2000 S1.0 T12 Z0.53 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.7 Y4.3 E1 F120
G1 X40.7 Y35.7 E1 F360
G1 X9.3 Y35.7 E1 F600
G1 X9.3 Y4.4 E1 F840
M221 P2000 S1.0 T12 Z0.54 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.6 Y4.4 E1 F120
G1 X40.6 Y35.6 E1 F360
G1 X9.4 Y35.6 E1 F600
G1 X9.4 Y4.5 E1 F840
M221 P2000 S1.0 T12 Z0.55 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.5 Y4.5 E1 F120
G1 X40.5 Y35.5 E1 F360
G1 X9.5 Y35.5 E1 F600
G1 X9.5 Y4.6 E1 F840
M221 P2000 S1.0 T12 Z0.56 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.4 Y4.6 E1 F120
G1 X40.4 Y35.4 E1 F360
G1 X9.6 Y35.4 E1 F600
G1 X9.6 Y4.7 E1 F840
M221 P2000 S1.0 T12 Z0.57 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.3 Y4.7 E1 F120
G1 X40.3 Y35.3 E1 F360
G1 X9.7 Y35.3 E1 F600
G1 X9.7 Y4.8 E1 F840
M221 P2000 S1.0 T12 Z0.58 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.2 Y4.8 E1 F120
G1 X40.2 Y35.2 E1 F360
G1 X9.8 Y35.2 E1 F600
G1 X9.8 Y4.9 E1 F840
M221 P2000 S1.0 T12 Z0.59 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.1 Y4.9 E1 F120
G1 X40.1 Y35.1 E1 F360
G1 X9.9 Y35.1 E1 F600
G1 X9.9 Y5 E1 F840
M221 P2000 S1.0 T12 Z0.6 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40 Y5 E1 F120
G1 X40 Y35 E1 F360
G1 X10 Y35 E1 F600
G1 X10 Y5.1 E1 F840
M221 P2000 S1.0 T12 Z0.61 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.9 Y5.1 E1 F120
G1 X39.9 Y34.9 E1 F360
G1 X10.1 Y34.9 E1 F600
G1 X10.1 Y5.2 E1 F840
M221 P2000 S1.0 T12 Z0.62 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.8 Y5.2 E1 F120
G1 X39.8 Y34.8 E1 F360
G1 X10.2 Y34.8 E1 F600
G1 X10.2 Y5.3 E1 F840
M221 P2000 S1.0 T12 Z0.63 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.7 Y5.3 E1 F120
G1 X39.7 Y34.7 E1 F360
G1 X10.3 Y34.7 E1 F600
G1 X10.3 Y5.4 E1 F840
M221 P2000 S1.0 T12 Z0.64 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.6 Y5.4 E1 F120
G1 X39.6 Y34.6 E1 F360
G1 X10.4 Y34.6 E1 F600
G1 X10.4 Y5.5 E1 F840
M221 P2000 S1.0 T12 Z0.65 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.5 Y5.5 E1 F120
G1 X39.5 Y34.5 E1 F360
G1 X10.5 Y34.5 E1 F600
G1 X10.5 Y5.6 E1 F840
M221 P2000 S1.0 T12 Z0.66 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.4 Y5.6 E1 F120
G1 X39.4 Y34.4 E1 F360
G1 X10.6 Y34.4 E1 F600
G1 X10.6 Y5.7 E1 F840
M221 P2000 S1.0 T12 Z0.67 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.3 Y5.7 E1 F120
G1 X39.3 Y34.3 E1 F360
G1 X10.7 Y34.3 E1 F600
G1 X10.7 Y5.8 E1 F840
M221 P2000 S1.0 T12 Z0.68 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.2 Y5.8 E1 F120
G1 X39.2 Y34.2 E1 F360
G1 X10.8 Y34.2 E1 F600
G1 X10.8 Y5.9 E1 F840
M221 P2000 S1.0 T12 Z0.69 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39.1 Y5.9 E1 F120
G1 X39.1 Y34.1 E1 F360
G1 X10.9 Y34.1 E1 F600
G1 X10.9 Y6 E1 F840
M221 P2000 S1.0 T12 Z0.7 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X39 Y6 E1 F120
G1 X39 Y34 E1 F360
G1 X11 Y34 E1 F600
G1 X11 Y6.1 E1 F840
M221 P2000 S1.0 T12 Z0.71 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.9 Y6.1 E1 F120
G1 X38.9 Y33.9 E1 F360
G1 X11.1 Y33.9 E1 F600
G1 X11.1 Y6.2 E1 F840
M221 P2000 S1.0 T12 Z0.72 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.8 Y6.2 E1 F120
G1 X38.8 Y33.8 E1 F360
G1 X11.2 Y33.8 E1 F600
G1 X11.2 Y6.3 E1 F840
M221 P2000 S1.0 T12 Z0.73 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.7 Y6.3 E1 F120
G1 X38.7 Y33.7 E1 F360
G1 X11.3 Y33.7 E1 F600
G1 X11.3 Y6.4 E1 F840
M221 P2000 S1.0 T12 Z0.74 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.6 Y6.4 E1 F120
G1 X38.6 Y33.6 E1 F360
G1 X11.4 Y33.6 E1 F600
G1 X11.4 Y6.5 E1 F840
M221 P2000 S1.0 T12 Z0.75 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.5 Y6.5 E1 F120
G1 X38.5 Y33.5 E1 F360
G1 X11.5 Y33.5 E1 F600
G1 X11.5 Y6.6 E1 F840
M221 P2000 S1.0 T12 Z0.76 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.4 Y6.6 E1 F120
G1 X38.4 Y33.4 E1 F360
G1 X11.6 Y33.4 E1 F600
G1 X11.6 Y6.7 E1 F840
M221 P2000 S1.0 T12 Z0.77 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.3 Y6.7 E1 F120
G1 X38.3 Y33.3 E1 F360
G1 X11.7 Y33.3 E1 F600
G1 X11.7 Y6.8 E1 F840
M221 P2000 S1.0 T12 Z0.78 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.2 Y6.8 E1 F120
G1 X38.2 Y33.2 E1 F360
G1 X11.8 Y33.2 E1 F600
G1 X11.8 Y6.9 E1 F840
M221 P2000 S1.0 T12 Z0.79 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38.1 Y6.9 E1 F120
G1 X38.1 Y33.1 E1 F360
G1 X11.9 Y33.1 E1 F600
G1 X11.9 Y7 E1 F840
M221 P2000 S1.0 T12 Z0.8 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X38 Y7 E1 F120
G1 X38 Y33 E1 F360
G1 X12 Y33 E1 F600
G1 X12 Y7.1 E1 F840
M221 P2000 S1.0 T12 Z0.81 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.9 Y7.1 E1 F120
G1 X37.9 Y32.9 E1 F360
G1 X12.1 Y32.9 E1 F600
G1 X12.1 Y7.2 E1 F840
M221 P2000 S1.0 T12 Z0.82 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.8 Y7.2 E1 F120
G1 X37.8 Y32.8 E1 F360
G1 X12.2 Y32.8 E1 F600
G1 X12.2 Y7.3 E1 F840
M221 P2000 S1.0 T12 Z0.83 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.7 Y7.3 E1 F120
G1 X37.7 Y32.7 E1 F360
G1 X12.3 Y32.7 E1 F600
G1 X12.3 Y7.4 E1 F840
M221 P2000 S1.0 T12 Z0.84 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.6 Y7.4 E1 F120
G1 X37.6 Y32.6 E1 F360
G1 X12.4 Y32.6 E1 F600
G1 X12.4 Y7.5 E1 F840
M221 P2000 S1.0 T12 Z0.85 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.5 Y7.5 E1 F120
G1 X37.5 Y32.5 E1 F360
G1 X12.5 Y32.5 E1 F600
G1 X12.5 Y7.6 E1 F840
M221 P2000 S1.0 T12 Z0.86 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.4 Y7.6 E1 F120
G1 X37.4 Y32.4 E1 F360
G1 X12.6 Y32.4 E1 F600
G1 X12.6 Y7.7 E1 F840
M221 P2000 S1.0 T12 Z0.87 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.3 Y7.7 E1 F120
G1 X37.3 Y32.3 E1 F360
G1 X12.7 Y32.3 E1 F600
G1 X12.7 Y7.8 E1 F840
M221 P2000 S1.0 T12 Z0.88 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.2 Y7.8 E1 F120
G1 X37.2 Y32.2 E1 F360
G1 X12.8 Y32.2 E1 F600
G1 X12.8 Y7.9 E1 F840
M221 P2000 S1.0 T12 Z0.89 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37.1 Y7.9 E1 F120
G1 X37.1 Y32.1 E1 F360
G1 X12.9 Y32.1 E1 F600
G1 X12.9 Y8 E1 F840
M221 P2000 S1.0 T12 Z0.9 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X37 Y8 E1 F120
G1 X37 Y32 E1 F360
G1 X13 Y32 E1 F600
G1 X13 Y8.1 E1 F840
M221 P2000 S1.0 T12 Z0.91 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.9 Y8.1 E1 F120
G1 X36.9 Y31.9 E1 F360
G1 X13.1 Y31.9 E1 F600
G1 X13.1 Y8.2 E1 F840
M221 P2000 S1.0 T12 Z0.92 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.8 Y8.2 E1 F120
G1 X36.8 Y31.8 E1 F360
G1 X13.2 Y31.8 E1 F600
G1 X13.2 Y8.3 E1 F840
M221 P2000 S1.0 T12 Z0.93 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.7 Y8.3 E1 F120
G1 X36.7 Y31.7 E1 F360
G1 X13.3 Y31.7 E1 F600
G1 X13.3 Y8.4 E1 F840
M221 P2000 S1.0 T12 Z0.94 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.6 Y8.4 E1 F120
G1 X36.6 Y31.6 E1 F360
G1 X13.4 Y31.6 E1 F600
G1 X13.4 Y8.5 E1 F840
M221 P2000 S1.0 T12 Z0.95 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.5 Y8.5 E1 F120
G1 X36.5 Y31.5 E1 F360
G1 X13.5 Y31.5 E1 F600
G1 X13.5 Y8.6 E1 F840
M221 P2000 S1.0 T12 Z0.96 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.4 Y8.6 E1 F120
G1 X36.4 Y31.4 E1 F360
G1 X13.6 Y31.4 E1 F600
G1 X13.6 Y8.7 E1 F840
M221 P2000 S1.0 T12 Z0.97 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.3 Y8.7 E1 F120
G1 X36.3 Y31.3 E1 F360
G1 X13.7 Y31.3 E1 F600
G1 X13.7 Y8.8 E1 F840
M221 P2000 S1.0 T12 Z0.98 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.2 Y8.8 E1 F120
G1 X36.2 Y31.2 E1 F360
G1 X13.8 Y31.2 E1 F600
G1 X13.8 Y8.9 E1 F840
M221 P2000 S1.0 T12 Z0.99 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36.1 Y8.9 E1 F120
G1 X36.1 Y31.1 E1 F360
G1 X13.9 Y31.1 E1 F600
G1 X13.9 Y9 E1 F840
M221 P2000 S1.0 T12 Z1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X36 Y9 E1 F120
G1 X36 Y31 E1 F360
G1 X14 Y31 E1 F600
G1 X14 Y9.1 E1 F840
M221 P2000 S1.0 T12 Z1.01 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.9 Y9.1 E1 F120
G1 X35.9 Y30.9 E1 F360
G1 X14.1 Y30.9 E1 F600
G1 X14.1 Y9.2 E1 F840
M221 P2000 S1.0 T12 Z1.02 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.8 Y9.2 E1 F120
G1 X35.8 Y30.8 E1 F360
G1 X14.2 Y30.8 E1 F600
G1 X14.2 Y9.3 E1 F840
M221 P2000 S1.0 T12 Z1.03 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.7 Y9.3 E1 F120
G1 X35.7 Y30.7 E1 F360
G1 X14.3 Y30.7 E1 F600
G1 X14.3 Y9.4 E1 F840
M221 P2000 S1.0 T12 Z1.04 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.6 Y9.4 E1 F120
G1 X35.6 Y30.6 E1 F360
G1 X14.4 Y30.6 E1 F600
G1 X14.4 Y9.5 E1 F840
M221 P2000 S1.0 T12 Z1.05 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.5 Y9.5 E1 F120
G1 X35.5 Y30.5 E1 F360
G1 X14.5 Y30.5 E1 F600
G1 X14.5 Y9.6 E1 F840
M221 P2000 S1.0 T12 Z1.06 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.4 Y9.6 E1 F120
G1 X35.4 Y30.4 E1 F360
G1 X14.6 Y30.4 E1 F600
G1 X14.6 Y9.7 E1 F840
M221 P2000 S1.0 T12 Z1.07 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.3 Y9.7 E1 F120
G1 X35.3 Y30.3 E1 F360
G1 X14.7 Y30.3 E1 F600
G1 X14.7 Y9.8 E1 F840
M221 P2000 S1.0 T12 Z1.08 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.2 Y9.8 E1 F120
G1 X35.2 Y30.2 E1 F360
G1 X14.8 Y30.2 E1 F600
G1 X14.8 Y9.9 E1 F840
M221 P2000 S1.0 T12 Z1.09 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X35.1 Y9.9 E1 F120
G1 X35.1 Y30.1 E1 F360
G1 X14.9 Y30.1 E1 F600
G1 X14.9 Y10 E1 F840
M221 P2000 S1.0 T12 Z1.1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X25 Y20 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program