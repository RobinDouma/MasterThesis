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
G1 X25 Y0 E1 F120
G1 X25 Y20 E1 F360
G1 X5 Y20 E1 F600
G1 X5 Y0.2 E1 F840
G1 X24.8 Y0.2 E1 F120
G1 X24.8 Y19.8 E1 F360
G1 X5.2 Y19.8 E1 F600
G1 X5.2 Y0.4 E1 F840
G1 X24.6 Y0.4 E1 F120
G1 X24.6 Y19.6 E1 F360
G1 X5.4 Y19.6 E1 F600
G1 X5.4 Y0.6 E1 F840
G1 X24.4 Y0.6 E1 F120
G1 X24.4 Y19.4 E1 F360
G1 X5.6 Y19.4 E1 F600
G1 X5.6 Y0.8 E1 F840
G1 X24.2 Y0.8 E1 F120
G1 X24.2 Y19.2 E1 F360
G1 X5.8 Y19.2 E1 F600
G1 X5.8 Y1 E1 F840
G1 X24 Y1 E1 F120
G1 X24 Y19 E1 F360
G1 X6 Y19 E1 F600
G1 X6 Y1.2 E1 F840
G1 X23.8 Y1.2 E1 F120
G1 X23.8 Y18.8 E1 F360
G1 X6.2 Y18.8 E1 F600
G1 X6.2 Y1.4 E1 F840
G1 X23.6 Y1.4 E1 F120
G1 X23.6 Y18.6 E1 F360
G1 X6.4 Y18.6 E1 F600
G1 X6.4 Y1.6 E1 F840
G1 X23.4 Y1.6 E1 F120
G1 X23.4 Y18.4 E1 F360
G1 X6.6 Y18.4 E1 F600
G1 X6.6 Y1.8 E1 F840
G1 X23.2 Y1.8 E1 F120
G1 X23.2 Y18.2 E1 F360
G1 X6.8 Y18.2 E1 F600
G1 X6.8 Y2 E1 F840
G1 X15 Y10 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

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
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 X30 Y25 E1 F120
G1 X35 Y25 E1 F120
G1 X55 Y25 E1 F120
G1 X55 Y45 E1 F360
G1 X35 Y45 E1 F33333
G1 X35 Y25.2 E1 F840
M221 P2000 S1.0 T12 Z0.11 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.8 Y25.2 E1 F120
G1 X54.8 Y44.8 E1 F360
G1 X35.2 Y44.8 E1 F33333
G1 X35.2 Y25.4 E1 F840
M221 P2000 S1.0 T12 Z0.12 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.6 Y25.4 E1 F120
G1 X54.6 Y44.6 E1 F360
G1 X35.4 Y44.6 E1 F33333
G1 X35.4 Y25.6 E1 F840
M221 P2000 S1.0 T12 Z0.13 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.4 Y25.6 E1 F120
G1 X54.4 Y44.4 E1 F360
G1 X35.6 Y44.4 E1 F33333
G1 X35.6 Y25.8 E1 F840
M221 P2000 S1.0 T12 Z0.14 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54.2 Y25.8 E1 F120
G1 X54.2 Y44.2 E1 F360
G1 X35.8 Y44.2 E1 F33333
G1 X35.8 Y26 E1 F840
M221 P2000 S1.0 T12 Z0.15 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X54 Y26 E1 F120
G1 X54 Y44 E1 F360
G1 X36 Y44 E1 F33333
G1 X36 Y26.2 E1 F840
M221 P2000 S1.0 T12 Z0.16 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X53.8 Y26.2 E1 F120
G1 X53.8 Y43.8 E1 F360
G1 X36.2 Y43.8 E1 F33333
G1 X36.2 Y26.4 E1 F840
M221 P2000 S1.0 T12 Z0.17 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X53.6 Y26.4 E1 F120
G1 X53.6 Y43.6 E1 F360
G1 X36.4 Y43.6 E1 F33333
G1 X36.4 Y26.6 E1 F840
M221 P2000 S1.0 T12 Z0.18 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X53.4 Y26.6 E1 F120
G1 X53.4 Y43.4 E1 F360
G1 X36.6 Y43.4 E1 F33333
G1 X36.6 Y26.8 E1 F840
M221 P2000 S1.0 T12 Z0.19 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X53.2 Y26.8 E1 F120
G1 X53.2 Y43.2 E1 F360
G1 X36.8 Y43.2 E1 F33333
G1 X36.8 Y27 E1 F840
M221 P2000 S1.0 T12 Z0.2 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X53 Y27 E1 F120
G1 X53 Y43 E1 F360
G1 X37 Y43 E1 F33333
G1 X37 Y27.2 E1 F840
M221 P2000 S1.0 T12 Z0.21 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X52.8 Y27.2 E1 F120
G1 X52.8 Y42.8 E1 F360
G1 X37.2 Y42.8 E1 F33333
G1 X37.2 Y27.4 E1 F840
M221 P2000 S1.0 T12 Z0.22 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X52.6 Y27.4 E1 F120
G1 X52.6 Y42.6 E1 F360
G1 X37.4 Y42.6 E1 F33333
G1 X37.4 Y27.6 E1 F840
M221 P2000 S1.0 T12 Z0.23 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X52.4 Y27.6 E1 F120
G1 X52.4 Y42.4 E1 F360
G1 X37.6 Y42.4 E1 F33333
G1 X37.6 Y27.8 E1 F840
M221 P2000 S1.0 T12 Z0.24 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X52.2 Y27.8 E1 F120
G1 X52.2 Y42.2 E1 F360
G1 X37.8 Y42.2 E1 F33333
G1 X37.8 Y28 E1 F840
M221 P2000 S1.0 T12 Z0.25 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X52 Y28 E1 F120
G1 X52 Y42 E1 F360
G1 X38 Y42 E1 F33333
G1 X38 Y28.2 E1 F840
M221 P2000 S1.0 T12 Z0.26 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X51.8 Y28.2 E1 F120
G1 X51.8 Y41.8 E1 F360
G1 X38.2 Y41.8 E1 F33333
G1 X38.2 Y28.4 E1 F840
M221 P2000 S1.0 T12 Z0.27 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X51.6 Y28.4 E1 F120
G1 X51.6 Y41.6 E1 F360
G1 X38.4 Y41.6 E1 F33333
G1 X38.4 Y28.6 E1 F840
M221 P2000 S1.0 T12 Z0.28 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X51.4 Y28.6 E1 F120
G1 X51.4 Y41.4 E1 F360
G1 X38.6 Y41.4 E1 F33333
G1 X38.6 Y28.8 E1 F840
M221 P2000 S1.0 T12 Z0.29 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X51.2 Y28.8 E1 F120
G1 X51.2 Y41.2 E1 F360
G1 X38.8 Y41.2 E1 F33333
G1 X38.8 Y29 E1 F840
M221 P2000 S1.0 T12 Z0.3 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X51 Y29 E1 F120
G1 X51 Y41 E1 F360
G1 X39 Y41 E1 F33333
G1 X39 Y29.2 E1 F840
M221 P2000 S1.0 T12 Z0.31 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X50.8 Y29.2 E1 F120
G1 X50.8 Y40.8 E1 F360
G1 X39.2 Y40.8 E1 F33333
G1 X39.2 Y29.4 E1 F840
M221 P2000 S1.0 T12 Z0.32 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X50.6 Y29.4 E1 F120
G1 X50.6 Y40.6 E1 F360
G1 X39.4 Y40.6 E1 F33333
G1 X39.4 Y29.6 E1 F840
M221 P2000 S1.0 T12 Z0.33 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X50.4 Y29.6 E1 F120
G1 X50.4 Y40.4 E1 F360
G1 X39.6 Y40.4 E1 F33333
G1 X39.6 Y29.8 E1 F840
M221 P2000 S1.0 T12 Z0.34 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X50.2 Y29.8 E1 F120
G1 X50.2 Y40.2 E1 F360
G1 X39.8 Y40.2 E1 F33333
G1 X39.8 Y30 E1 F840
M221 P2000 S1.0 T12 Z0.35 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X50 Y30 E1 F120
G1 X50 Y40 E1 F360
G1 X40 Y40 E1 F33333
G1 X40 Y30.2 E1 F840
M221 P2000 S1.0 T12 Z0.36 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X49.8 Y30.2 E1 F120
G1 X49.8 Y39.8 E1 F360
G1 X40.2 Y39.8 E1 F33333
G1 X40.2 Y30.4 E1 F840
M221 P2000 S1.0 T12 Z0.37 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X49.6 Y30.4 E1 F120
G1 X49.6 Y39.6 E1 F360
G1 X40.4 Y39.6 E1 F33333
G1 X40.4 Y30.6 E1 F840
M221 P2000 S1.0 T12 Z0.38 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X49.4 Y30.6 E1 F120
G1 X49.4 Y39.4 E1 F360
G1 X40.6 Y39.4 E1 F33333
G1 X40.6 Y30.8 E1 F840
M221 P2000 S1.0 T12 Z0.39 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X49.2 Y30.8 E1 F120
G1 X49.2 Y39.2 E1 F360
G1 X40.8 Y39.2 E1 F33333
G1 X40.8 Y31 E1 F840
M221 P2000 S1.0 T12 Z0.4 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X49 Y31 E1 F120
G1 X49 Y39 E1 F360
G1 X41 Y39 E1 F33333
G1 X41 Y31.2 E1 F840
M221 P2000 S1.0 T12 Z0.41 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X48.8 Y31.2 E1 F120
G1 X48.8 Y38.8 E1 F360
G1 X41.2 Y38.8 E1 F33333
G1 X41.2 Y31.4 E1 F840
M221 P2000 S1.0 T12 Z0.42 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X48.6 Y31.4 E1 F120
G1 X48.6 Y38.6 E1 F360
G1 X41.4 Y38.6 E1 F33333
G1 X41.4 Y31.6 E1 F840
M221 P2000 S1.0 T12 Z0.43 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X48.4 Y31.6 E1 F120
G1 X48.4 Y38.4 E1 F360
G1 X41.6 Y38.4 E1 F33333
G1 X41.6 Y31.8 E1 F840
M221 P2000 S1.0 T12 Z0.44 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X48.2 Y31.8 E1 F120
G1 X48.2 Y38.2 E1 F360
G1 X41.8 Y38.2 E1 F33333
G1 X41.8 Y32 E1 F840
M221 P2000 S1.0 T12 Z0.45 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X48 Y32 E1 F120
G1 X48 Y38 E1 F360
G1 X42 Y38 E1 F33333
G1 X42 Y32.2 E1 F840
M221 P2000 S1.0 T12 Z0.46 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X47.8 Y32.2 E1 F120
G1 X47.8 Y37.8 E1 F360
G1 X42.2 Y37.8 E1 F33333
G1 X42.2 Y32.4 E1 F840
M221 P2000 S1.0 T12 Z0.47 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X47.6 Y32.4 E1 F120
G1 X47.6 Y37.6 E1 F360
G1 X42.4 Y37.6 E1 F33333
G1 X42.4 Y32.6 E1 F840
M221 P2000 S1.0 T12 Z0.48 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X47.4 Y32.6 E1 F120
G1 X47.4 Y37.4 E1 F360
G1 X42.6 Y37.4 E1 F33333
G1 X42.6 Y32.8 E1 F840
M221 P2000 S1.0 T12 Z0.49 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X47.2 Y32.8 E1 F120
G1 X47.2 Y37.2 E1 F360
G1 X42.8 Y37.2 E1 F33333
G1 X42.8 Y33 E1 F840
M221 P2000 S1.0 T12 Z0.5 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X47 Y33 E1 F120
G1 X47 Y37 E1 F360
G1 X43 Y37 E1 F33333
G1 X43 Y33.2 E1 F840
M221 P2000 S1.0 T12 Z0.51 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46.8 Y33.2 E1 F120
G1 X46.8 Y36.8 E1 F360
G1 X43.2 Y36.8 E1 F33333
G1 X43.2 Y33.4 E1 F840
M221 P2000 S1.0 T12 Z0.52 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46.6 Y33.4 E1 F120
G1 X46.6 Y36.6 E1 F360
G1 X43.4 Y36.6 E1 F33333
G1 X43.4 Y33.6 E1 F840
M221 P2000 S1.0 T12 Z0.53 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46.4 Y33.6 E1 F120
G1 X46.4 Y36.4 E1 F360
G1 X43.6 Y36.4 E1 F33333
G1 X43.6 Y33.8 E1 F840
M221 P2000 S1.0 T12 Z0.54 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46.2 Y33.8 E1 F120
G1 X46.2 Y36.2 E1 F360
G1 X43.8 Y36.2 E1 F33333
G1 X43.8 Y34 E1 F840
M221 P2000 S1.0 T12 Z0.55 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X46 Y34 E1 F120
G1 X46 Y36 E1 F360
G1 X44 Y36 E1 F33333
G1 X44 Y34.2 E1 F840
M221 P2000 S1.0 T12 Z0.56 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45.8 Y34.2 E1 F120
G1 X45.8 Y35.8 E1 F360
G1 X44.2 Y35.8 E1 F33333
G1 X44.2 Y34.4 E1 F840
M221 P2000 S1.0 T12 Z0.57 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45.6 Y34.4 E1 F120
G1 X45.6 Y35.6 E1 F360
G1 X44.4 Y35.6 E1 F33333
G1 X44.4 Y34.6 E1 F840
M221 P2000 S1.0 T12 Z0.58 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45.4 Y34.6 E1 F120
G1 X45.4 Y35.4 E1 F360
G1 X44.6 Y35.4 E1 F33333
G1 X44.6 Y34.8 E1 F840
M221 P2000 S1.0 T12 Z0.59 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45.2 Y34.8 E1 F120
G1 X45.2 Y35.2 E1 F360
G1 X44.8 Y35.2 E1 F33333
G1 X44.8 Y35 E1 F840
M221 P2000 S1.0 T12 Z0.6 W0.335  ; set flow : pulses[p/µl], multiplier[#], tool[#], layer[mm], nozzle[mm]

G1 X45 Y35 E1 F120

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program