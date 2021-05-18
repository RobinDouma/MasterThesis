; INITIALIZATION : GENERAL
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

G21 ; set units : mm     
G90 ; coordinates printing : absolute    
M82 ; coordinates extrusion : absolute
;G92 E0 ; check ik needed, sets offsets

; INITIALIZATION : PRINTING
M660 H2 Z57.950 ; slot 1 : define start Z
;M660 H3 Z119.999 ; slot 2 : define start z

M6 T12 O2 X70 Y60 ; slot 1 : define start x & y
;M6 T13 O3 X45 Y84 ; slot 2 : define start x & y

M190 S56 ; bed : define temperature
M109 T12 S79 ; slot 1 : define temperature

M721 S25000 E1 P-5000 T12 ; set unprime value for non-print move - speed[p/s], extrusion[p], unprime start wrt move end[ms], tool[#]
M722 S25000 E1 P5000  T12 ; set prime value for print move - speed[p/s], extrusion[p], prime start wrt move end[ms], tool[#]
M221 P2000 S1.0 T12 Z0.100 W0.335  ; set flow : pulses[p/??l], multiplier[#], tool[#], layer[mm], nozzle[mm]
      
; PRINTING : START-UP
T1 ; slot 1
;T2 ; slot 2

G0 X0 Y0 ; goes to defined start x & y
G0 Z0 H2 ; goes to defined start z

M722 S10000 E99999 P6000 I0 T12 ; prime
G92 E0 ; replace extruder position : E[mm]

G4 P5000 ; wait P[ms]

; PRINTING : EXTRUSION
G1 Z0.1     E1 F120
G1 X40 Y0   E1
G1 X40 Y0.3 E1  
G1 X20 Y0.3 E1  
G1 X20 Y0.6 E1
G1 X40 Y0.6 E1
G1 X40 Y0.9 E1
G1 X20 Y0.9 E1
G1 X20 Y1.2 E1
G1 X40 Y1.2 E1
G1 X40 Y1.5 E1
G1 X20 Y1.5 E1
G1 X20 Y1.8 E1
G1 X40 Y1.8 E1
G1 X40 Y2.1 E1
G1 X20 Y2.1 E1
G1 X20 Y2.4 E1
G1 X40 Y2.4 E1
G1 X40 Y2.7 E1
G1 X10 Y2.7 E1

; PRINTING : FINALIZATION
G0 Z50 ; go up Z[mm]
M109 T12 S25 ; slot 1 : temperature reset to RT

M721 S10000 E99999 P6000 I0 T12 ; unprime 
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime 
G4 P10000 ; wait P[ms]

G53 ; clear offsets
M30 ; end of program