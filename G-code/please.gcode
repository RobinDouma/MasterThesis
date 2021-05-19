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
G1 Z0.1 E1 F120
G1 X0 Y0 E1 F120
G1 X5 Y0 E1 F120
G1 X45 Y0 E1 F120
G1 X45 Y40 E1 F360
G1 X5 Y40 E1 F600
G1 X5 Y0.5 E1 F840
G1 Z0.11 E1 F120
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44.5 Y0.5 E1 F120
G1 X44.5 Y39.5 E1 F360
G1 X5.5 Y39.5 E1 F600
G1 X5.5 Y1 E1 F840
G1 Z0.12 E1 F120
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X44 Y1 E1 F120
G1 X44 Y39 E1 F360
G1 X6 Y39 E1 F600
G1 X6 Y1.5 E1 F840
G1 Z0.13 E1 F120
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43.5 Y1.5 E1 F120
G1 X43.5 Y38.5 E1 F360
G1 X6.5 Y38.5 E1 F600
G1 X6.5 Y2 E1 F840
G1 Z0.14 E1 F120
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X43 Y2 E1 F120
G1 X43 Y38 E1 F360
G1 X7 Y38 E1 F600
G1 X7 Y2.5 E1 F840
G1 Z0.15 E1 F120
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42.5 Y2.5 E1 F120
G1 X42.5 Y37.5 E1 F360
G1 X7.5 Y37.5 E1 F600
G1 X7.5 Y3 E1 F840
G1 Z0.16 E1 F120
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X42 Y3 E1 F120
G1 X42 Y37 E1 F360
G1 X8 Y37 E1 F600
G1 X8 Y3.5 E1 F840
G1 Z0.17 E1 F120
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41.5 Y3.5 E1 F120
G1 X41.5 Y36.5 E1 F360
G1 X8.5 Y36.5 E1 F600
G1 X8.5 Y4 E1 F840
G1 Z0.18 E1 F120
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X41 Y4 E1 F120
G1 X41 Y36 E1 F360
G1 X9 Y36 E1 F600
G1 X9 Y4.5 E1 F840
G1 Z0.19 E1 F120
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X40.5 Y4.5 E1 F120
G1 X40.5 Y35.5 E1 F360
G1 X9.5 Y35.5 E1 F600
G1 X9.5 Y5 E1 F840
G1 Z0.2 E1 F120
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X25 Y20 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M660 H2 Z0 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X50 Y50 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F120
G1 X50 Y50 E1 F120
G1 X55 Y50 E1 F120
G1 X95 Y50 E1 F120
G1 X95 Y130 E1 F360
G1 X55 Y130 E1 F600
G1 X55 Y51 E1 F840
G1 Z0.11 E1 F120
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X94 Y51 E1 F120
G1 X94 Y129 E1 F360
G1 X56 Y129 E1 F600
G1 X56 Y52 E1 F840
G1 Z0.12 E1 F120
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X93 Y52 E1 F120
G1 X93 Y128 E1 F360
G1 X57 Y128 E1 F600
G1 X57 Y53 E1 F840
G1 Z0.13 E1 F120
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X92 Y53 E1 F120
G1 X92 Y127 E1 F360
G1 X58 Y127 E1 F600
G1 X58 Y54 E1 F840
G1 Z0.14 E1 F120
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X91 Y54 E1 F120
G1 X91 Y126 E1 F360
G1 X59 Y126 E1 F600
G1 X59 Y55 E1 F840
G1 Z0.15 E1 F120
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X90 Y55 E1 F120
G1 X90 Y125 E1 F360
G1 X60 Y125 E1 F600
G1 X60 Y56 E1 F840
G1 Z0.16 E1 F120
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X89 Y56 E1 F120
G1 X89 Y124 E1 F360
G1 X61 Y124 E1 F600
G1 X61 Y57 E1 F840
G1 Z0.17 E1 F120
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X88 Y57 E1 F120
G1 X88 Y123 E1 F360
G1 X62 Y123 E1 F600
G1 X62 Y58 E1 F840
G1 Z0.18 E1 F120
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X87 Y58 E1 F120
G1 X87 Y122 E1 F360
G1 X63 Y122 E1 F600
G1 X63 Y59 E1 F840
G1 Z0.19 E1 F120
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X86 Y59 E1 F120
G1 X86 Y121 E1 F360
G1 X64 Y121 E1 F600
G1 X64 Y60 E1 F840
G1 Z0.2 E1 F120
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X75 Y90 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program