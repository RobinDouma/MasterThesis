; INITIALIZATION : GENERAL
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

G21 ; set units : mm
G90 ; coordinates printing : absolute
M82 ; coordinates extrusion : absolute
;G92 E0 ; check ik needed, sets offsets

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
G1 X25 Y0 E1 F120
G1 X25 Y20 E1 F360
G1 X5 Y20 E1 F600
G1 X5 Y0.2 E1 F840
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.8 Y0.2 E1 F120
G1 X24.8 Y19.8 E1 F360
G1 X5.2 Y19.8 E1 F600
G1 X5.2 Y0.4 E1 F840
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.6 Y0.4 E1 F120
G1 X24.6 Y19.6 E1 F360
G1 X5.4 Y19.6 E1 F600
G1 X5.4 Y0.6 E1 F840
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.4 Y0.6 E1 F120
G1 X24.4 Y19.4 E1 F360
G1 X5.6 Y19.4 E1 F600
G1 X5.6 Y0.8 E1 F840
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.2 Y0.8 E1 F120
G1 X24.2 Y19.2 E1 F360
G1 X5.8 Y19.2 E1 F600
G1 X5.8 Y1 E1 F840
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24 Y1 E1 F120
G1 X24 Y19 E1 F360
G1 X6 Y19 E1 F600
G1 X6 Y1.2 E1 F840
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.8 Y1.2 E1 F120
G1 X23.8 Y18.8 E1 F360
G1 X6.2 Y18.8 E1 F600
G1 X6.2 Y1.4 E1 F840
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.6 Y1.4 E1 F120
G1 X23.6 Y18.6 E1 F360
G1 X6.4 Y18.6 E1 F600
G1 X6.4 Y1.6 E1 F840
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.4 Y1.6 E1 F120
G1 X23.4 Y18.4 E1 F360
G1 X6.6 Y18.4 E1 F600
G1 X6.6 Y1.8 E1 F840
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.2 Y1.8 E1 F120
G1 X23.2 Y18.2 E1 F360
G1 X6.8 Y18.2 E1 F600
G1 X6.8 Y2 E1 F840
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X15 Y10 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]
M109 T12 S25 ; slot 1 : temperature reset to RT

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M660 H2 Z0 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X0 Y25 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 X0 Y25 E1 F120
G1 X5 Y25 E1 F120
G1 X25 Y25 E1 F120
G1 X25 Y45 E1 F360
G1 X5 Y45 E1 F600
G1 X5 Y25.2 E1 F840
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.8 Y25.2 E1 F120
G1 X24.8 Y44.8 E1 F360
G1 X5.2 Y44.8 E1 F600
G1 X5.2 Y25.4 E1 F840
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.6 Y25.4 E1 F120
G1 X24.6 Y44.6 E1 F360
G1 X5.4 Y44.6 E1 F600
G1 X5.4 Y25.6 E1 F840
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.4 Y25.6 E1 F120
G1 X24.4 Y44.4 E1 F360
G1 X5.6 Y44.4 E1 F600
G1 X5.6 Y25.8 E1 F840
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24.2 Y25.8 E1 F120
G1 X24.2 Y44.2 E1 F360
G1 X5.8 Y44.2 E1 F600
G1 X5.8 Y26 E1 F840
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X24 Y26 E1 F120
G1 X24 Y44 E1 F360
G1 X6 Y44 E1 F600
G1 X6 Y26.2 E1 F840
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.8 Y26.2 E1 F120
G1 X23.8 Y43.8 E1 F360
G1 X6.2 Y43.8 E1 F600
G1 X6.2 Y26.4 E1 F840
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.6 Y26.4 E1 F120
G1 X23.6 Y43.6 E1 F360
G1 X6.4 Y43.6 E1 F600
G1 X6.4 Y26.6 E1 F840
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.4 Y26.6 E1 F120
G1 X23.4 Y43.4 E1 F360
G1 X6.6 Y43.4 E1 F600
G1 X6.6 Y26.8 E1 F840
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23.2 Y26.8 E1 F120
G1 X23.2 Y43.2 E1 F360
G1 X6.8 Y43.2 E1 F600
G1 X6.8 Y27 E1 F840
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X23 Y27 E1 F120
G1 X23 Y43 E1 F360
G1 X7 Y43 E1 F600
G1 X7 Y27.2 E1 F840
M221 P2000 S1.0 T12 Z0.21 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X22.8 Y27.2 E1 F120
G1 X22.8 Y42.8 E1 F360
G1 X7.2 Y42.8 E1 F600
G1 X7.2 Y27.4 E1 F840
M221 P2000 S1.0 T12 Z0.22 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X22.6 Y27.4 E1 F120
G1 X22.6 Y42.6 E1 F360
G1 X7.4 Y42.6 E1 F600
G1 X7.4 Y27.6 E1 F840
M221 P2000 S1.0 T12 Z0.23 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X22.4 Y27.6 E1 F120
G1 X22.4 Y42.4 E1 F360
G1 X7.6 Y42.4 E1 F600
G1 X7.6 Y27.8 E1 F840
M221 P2000 S1.0 T12 Z0.24 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X22.2 Y27.8 E1 F120
G1 X22.2 Y42.2 E1 F360
G1 X7.8 Y42.2 E1 F600
G1 X7.8 Y28 E1 F840
M221 P2000 S1.0 T12 Z0.25 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X22 Y28 E1 F120
G1 X22 Y42 E1 F360
G1 X8 Y42 E1 F600
G1 X8 Y28.2 E1 F840
M221 P2000 S1.0 T12 Z0.26 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X21.8 Y28.2 E1 F120
G1 X21.8 Y41.8 E1 F360
G1 X8.2 Y41.8 E1 F600
G1 X8.2 Y28.4 E1 F840
M221 P2000 S1.0 T12 Z0.27 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X21.6 Y28.4 E1 F120
G1 X21.6 Y41.6 E1 F360
G1 X8.4 Y41.6 E1 F600
G1 X8.4 Y28.6 E1 F840
M221 P2000 S1.0 T12 Z0.28 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X21.4 Y28.6 E1 F120
G1 X21.4 Y41.4 E1 F360
G1 X8.6 Y41.4 E1 F600
G1 X8.6 Y28.8 E1 F840
M221 P2000 S1.0 T12 Z0.29 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X21.2 Y28.8 E1 F120
G1 X21.2 Y41.2 E1 F360
G1 X8.8 Y41.2 E1 F600
G1 X8.8 Y29 E1 F840
M221 P2000 S1.0 T12 Z0.3 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X15 Y35 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]
M109 T12 S25 ; slot 1 : temperature reset to RT

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M660 H2 Z0 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X30 Y25 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 X30 Y25 E1 F120
G1 X35 Y25 E1 F120
G1 X55 Y25 E1 F120
G1 X55 Y45 E1 F360
G1 X35 Y45 E1 F600
G1 X35 Y25.1 E1 F840
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.9 Y25.1 E1 F120
G1 X54.9 Y44.9 E1 F360
G1 X35.1 Y44.9 E1 F600
G1 X35.1 Y25.2 E1 F840
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.8 Y25.2 E1 F120
G1 X54.8 Y44.8 E1 F360
G1 X35.2 Y44.8 E1 F600
G1 X35.2 Y25.3 E1 F840
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.7 Y25.3 E1 F120
G1 X54.7 Y44.7 E1 F360
G1 X35.3 Y44.7 E1 F600
G1 X35.3 Y25.4 E1 F840
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.6 Y25.4 E1 F120
G1 X54.6 Y44.6 E1 F360
G1 X35.4 Y44.6 E1 F600
G1 X35.4 Y25.5 E1 F840
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.5 Y25.5 E1 F120
G1 X54.5 Y44.5 E1 F360
G1 X35.5 Y44.5 E1 F600
G1 X35.5 Y25.6 E1 F840
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.4 Y25.6 E1 F120
G1 X54.4 Y44.4 E1 F360
G1 X35.6 Y44.4 E1 F600
G1 X35.6 Y25.7 E1 F840
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.3 Y25.7 E1 F120
G1 X54.3 Y44.3 E1 F360
G1 X35.7 Y44.3 E1 F600
G1 X35.7 Y25.8 E1 F840
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.2 Y25.8 E1 F120
G1 X54.2 Y44.2 E1 F360
G1 X35.8 Y44.2 E1 F600
G1 X35.8 Y25.9 E1 F840
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.1 Y25.9 E1 F120
G1 X54.1 Y44.1 E1 F360
G1 X35.9 Y44.1 E1 F600
G1 X35.9 Y26 E1 F840
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45 Y35 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]
M109 T12 S25 ; slot 1 : temperature reset to RT

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

; INITIALIZATION : PRINTING
M660 H2 Z0 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X30 Y0 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S69 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M221 P2000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 X30 Y0 E1 F120
G1 X35 Y0 E1 F120
G1 X75 Y0 E1 F120
G1 X75 Y20 E1 F360
G1 X35 Y20 E1 F600
G1 X35 Y0.2 E1 F840
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X74.8 Y0.2 E1 F120
G1 X74.8 Y19.8 E1 F360
G1 X35.2 Y19.8 E1 F600
G1 X35.2 Y0.4 E1 F840
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X74.6 Y0.4 E1 F120
G1 X74.6 Y19.6 E1 F360
G1 X35.4 Y19.6 E1 F600
G1 X35.4 Y0.6 E1 F840
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X74.4 Y0.6 E1 F120
G1 X74.4 Y19.4 E1 F360
G1 X35.6 Y19.4 E1 F600
G1 X35.6 Y0.8 E1 F840
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X74.2 Y0.8 E1 F120
G1 X74.2 Y19.2 E1 F360
G1 X35.8 Y19.2 E1 F600
G1 X35.8 Y1 E1 F840
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X74 Y1 E1 F120
G1 X74 Y19 E1 F360
G1 X36 Y19 E1 F600
G1 X36 Y1.2 E1 F840
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X73.8 Y1.2 E1 F120
G1 X73.8 Y18.8 E1 F360
G1 X36.2 Y18.8 E1 F600
G1 X36.2 Y1.4 E1 F840
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X73.6 Y1.4 E1 F120
G1 X73.6 Y18.6 E1 F360
G1 X36.4 Y18.6 E1 F600
G1 X36.4 Y1.6 E1 F840
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X73.4 Y1.6 E1 F120
G1 X73.4 Y18.4 E1 F360
G1 X36.6 Y18.4 E1 F600
G1 X36.6 Y1.8 E1 F840
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X73.2 Y1.8 E1 F120
G1 X73.2 Y18.2 E1 F360
G1 X36.8 Y18.2 E1 F600
G1 X36.8 Y2 E1 F840
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X55 Y10 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]
M109 T12 S25 ; slot 1 : temperature reset to RT

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program