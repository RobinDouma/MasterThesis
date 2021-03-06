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

M190 S56 ; bed : define temperature
M109 T12 S72 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P4000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F360
G1 X0 Y0 E1 F360
G1 X5 Y0 E1 F360
G1 X25 Y0 E1 F360

G1 X25 Y4 E1 F360

G1 X5 Y4 E1 F360

G1 X5 Y0.25 E1 F360

G1 X24.75 Y0.25 E1 F360

G1 X24.75 Y3.75 E1 F360

G1 X5.25 Y3.75 E1 F360

G1 X5.25 Y0.5 E1 F360

G1 X24.5 Y0.5 E1 F360

G1 X24.5 Y3.5 E1 F360

G1 X5.5 Y3.5 E1 F360

G1 X5.5 Y0.75 E1 F360

G1 X24.25 Y0.75 E1 F360

G1 X24.25 Y3.25 E1 F360

G1 X5.75 Y3.25 E1 F360

G1 X5.75 Y1 E1 F360

G1 X24 Y1 E1 F360

G1 X24 Y3 E1 F360

G1 X6 Y3 E1 F360

G1 X6 Y1.25 E1 F360

G1 X23.75 Y1.25 E1 F360

G1 X23.75 Y2.75 E1 F360

G1 X6.25 Y2.75 E1 F360

G1 X6.25 Y1.5 E1 F360

G1 X23.5 Y1.5 E1 F360

G1 X23.5 Y2.5 E1 F360

G1 X6.5 Y2.5 E1 F360

G1 X6.5 Y1.75 E1 F360

G1 X23.25 Y1.75 E1 F360

G1 X23.25 Y2.25 E1 F360

G1 X6.75 Y2.25 E1 F360

G1 X6.75 Y2 E1 F360

G1 X23.25 Y2 E1 F360

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 2 STARTS HERE

; INITIALIZATION : PRINTING
M190 S56 ; bed : define temperature
M109 T12 S72 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y5 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F420
G1 X0 Y5 E1 F420
G1 X5 Y5 E1 F420
G1 X25 Y5 E1 F420

G1 X25 Y9 E1 F420

G1 X5 Y9 E1 F420

G1 X5 Y5.25 E1 F420

G1 X24.75 Y5.25 E1 F420

G1 X24.75 Y8.75 E1 F420

G1 X5.25 Y8.75 E1 F420

G1 X5.25 Y5.5 E1 F420

G1 X24.5 Y5.5 E1 F420

G1 X24.5 Y8.5 E1 F420

G1 X5.5 Y8.5 E1 F420

G1 X5.5 Y5.75 E1 F420

G1 X24.25 Y5.75 E1 F420

G1 X24.25 Y8.25 E1 F420

G1 X5.75 Y8.25 E1 F420

G1 X5.75 Y6 E1 F420

G1 X24 Y6 E1 F420

G1 X24 Y8 E1 F420

G1 X6 Y8 E1 F420

G1 X6 Y6.25 E1 F420

G1 X23.75 Y6.25 E1 F420

G1 X23.75 Y7.75 E1 F420

G1 X6.25 Y7.75 E1 F420

G1 X6.25 Y6.5 E1 F420

G1 X23.5 Y6.5 E1 F420

G1 X23.5 Y7.5 E1 F420

G1 X6.5 Y7.5 E1 F420

G1 X6.5 Y6.75 E1 F420

G1 X23.25 Y6.75 E1 F420

G1 X23.25 Y7.25 E1 F420

G1 X6.75 Y7.25 E1 F420

G1 X6.75 Y7 E1 F420

G1 X23.25 Y7 E1 F420

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 3 STARTS HERE

; INITIALIZATION : PRINTING
M190 S56 ; bed : define temperature
M109 T12 S72 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y10 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F480
G1 X0 Y10 E1 F480
G1 X5 Y10 E1 F480
G1 X25 Y10 E1 F480

G1 X25 Y14 E1 F480

G1 X5 Y14 E1 F480

G1 X5 Y10.25 E1 F480

G1 X24.75 Y10.25 E1 F480

G1 X24.75 Y13.75 E1 F480

G1 X5.25 Y13.75 E1 F480

G1 X5.25 Y10.5 E1 F480

G1 X24.5 Y10.5 E1 F480

G1 X24.5 Y13.5 E1 F480

G1 X5.5 Y13.5 E1 F480

G1 X5.5 Y10.75 E1 F480

G1 X24.25 Y10.75 E1 F480

G1 X24.25 Y13.25 E1 F480

G1 X5.75 Y13.25 E1 F480

G1 X5.75 Y11 E1 F480

G1 X24 Y11 E1 F480

G1 X24 Y13 E1 F480

G1 X6 Y13 E1 F480

G1 X6 Y11.25 E1 F480

G1 X23.75 Y11.25 E1 F480

G1 X23.75 Y12.75 E1 F480

G1 X6.25 Y12.75 E1 F480

G1 X6.25 Y11.5 E1 F480

G1 X23.5 Y11.5 E1 F480

G1 X23.5 Y12.5 E1 F480

G1 X6.5 Y12.5 E1 F480

G1 X6.5 Y11.75 E1 F480

G1 X23.25 Y11.75 E1 F480

G1 X23.25 Y12.25 E1 F480

G1 X6.75 Y12.25 E1 F480

G1 X6.75 Y12 E1 F480

G1 X23.25 Y12 E1 F480

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 4 STARTS HERE

; INITIALIZATION : PRINTING
M190 S56 ; bed : define temperature
M109 T12 S72 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y15 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F540
G1 X0 Y15 E1 F540
G1 X5 Y15 E1 F540
G1 X25 Y15 E1 F540

G1 X25 Y19 E1 F540

G1 X5 Y19 E1 F540

G1 X5 Y15.25 E1 F540

G1 X24.75 Y15.25 E1 F540

G1 X24.75 Y18.75 E1 F540

G1 X5.25 Y18.75 E1 F540

G1 X5.25 Y15.5 E1 F540

G1 X24.5 Y15.5 E1 F540

G1 X24.5 Y18.5 E1 F540

G1 X5.5 Y18.5 E1 F540

G1 X5.5 Y15.75 E1 F540

G1 X24.25 Y15.75 E1 F540

G1 X24.25 Y18.25 E1 F540

G1 X5.75 Y18.25 E1 F540

G1 X5.75 Y16 E1 F540

G1 X24 Y16 E1 F540

G1 X24 Y18 E1 F540

G1 X6 Y18 E1 F540

G1 X6 Y16.25 E1 F540

G1 X23.75 Y16.25 E1 F540

G1 X23.75 Y17.75 E1 F540

G1 X6.25 Y17.75 E1 F540

G1 X6.25 Y16.5 E1 F540

G1 X23.5 Y16.5 E1 F540

G1 X23.5 Y17.5 E1 F540

G1 X6.5 Y17.5 E1 F540

G1 X6.5 Y16.75 E1 F540

G1 X23.25 Y16.75 E1 F540

G1 X23.25 Y17.25 E1 F540

G1 X6.75 Y17.25 E1 F540

G1 X6.75 Y17 E1 F540

G1 X23.25 Y17 E1 F540

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 5 STARTS HERE

; INITIALIZATION : PRINTING
M190 S56 ; bed : define temperature
M109 T12 S72 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y20 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F600
G1 X0 Y20 E1 F600
G1 X5 Y20 E1 F600
G1 X25 Y20 E1 F600

G1 X25 Y24 E1 F600

G1 X5 Y24 E1 F600

G1 X5 Y20.25 E1 F600

G1 X24.75 Y20.25 E1 F600

G1 X24.75 Y23.75 E1 F600

G1 X5.25 Y23.75 E1 F600

G1 X5.25 Y20.5 E1 F600

G1 X24.5 Y20.5 E1 F600

G1 X24.5 Y23.5 E1 F600

G1 X5.5 Y23.5 E1 F600

G1 X5.5 Y20.75 E1 F600

G1 X24.25 Y20.75 E1 F600

G1 X24.25 Y23.25 E1 F600

G1 X5.75 Y23.25 E1 F600

G1 X5.75 Y21 E1 F600

G1 X24 Y21 E1 F600

G1 X24 Y23 E1 F600

G1 X6 Y23 E1 F600

G1 X6 Y21.25 E1 F600

G1 X23.75 Y21.25 E1 F600

G1 X23.75 Y22.75 E1 F600

G1 X6.25 Y22.75 E1 F600

G1 X6.25 Y21.5 E1 F600

G1 X23.5 Y21.5 E1 F600

G1 X23.5 Y22.5 E1 F600

G1 X6.5 Y22.5 E1 F600

G1 X6.5 Y21.75 E1 F600

G1 X23.25 Y21.75 E1 F600

G1 X23.25 Y22.25 E1 F600

G1 X6.75 Y22.25 E1 F600

G1 X6.75 Y22 E1 F600

G1 X23.25 Y22 E1 F600

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

;SHAPE 6 STARTS HERE

; INITIALIZATION : PRINTING
M190 S56 ; bed : define temperature
M109 T12 S72 ; slot 1 : define temperature

M221 P4000 S1.0 T12 Z0.1 W0.335  ; set flow : pulses[p/?l], multiplier[#], tool[#], layer[mm], nozzle[mm]

; PRINTING : START-UP
G0 X0 Y25 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

G4 P0.000000 ; wait P[ms] between shapes
M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

; PRINTING : EXTRUSION
G1 Z0.1 E1 F660
G1 X0 Y25 E1 F660
G1 X5 Y25 E1 F660
G1 X25 Y25 E1 F660

G1 X25 Y29 E1 F660

G1 X5 Y29 E1 F660

G1 X5 Y25.25 E1 F660

G1 X24.75 Y25.25 E1 F660

G1 X24.75 Y28.75 E1 F660

G1 X5.25 Y28.75 E1 F660

G1 X5.25 Y25.5 E1 F660

G1 X24.5 Y25.5 E1 F660

G1 X24.5 Y28.5 E1 F660

G1 X5.5 Y28.5 E1 F660

G1 X5.5 Y25.75 E1 F660

G1 X24.25 Y25.75 E1 F660

G1 X24.25 Y28.25 E1 F660

G1 X5.75 Y28.25 E1 F660

G1 X5.75 Y26 E1 F660

G1 X24 Y26 E1 F660

G1 X24 Y28 E1 F660

G1 X6 Y28 E1 F660

G1 X6 Y26.25 E1 F660

G1 X23.75 Y26.25 E1 F660

G1 X23.75 Y27.75 E1 F660

G1 X6.25 Y27.75 E1 F660

G1 X6.25 Y26.5 E1 F660

G1 X23.5 Y26.5 E1 F660

G1 X23.5 Y27.5 E1 F660

G1 X6.5 Y27.5 E1 F660

G1 X6.5 Y26.75 E1 F660

G1 X23.25 Y26.75 E1 F660

G1 X23.25 Y27.25 E1 F660

G1 X6.75 Y27.25 E1 F660

G1 X6.75 Y27 E1 F660

G1 X23.25 Y27 E1 F660

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]

G53 ; clear offsets
M30 ; end of program