; Initialization
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

;CHANGE 1/7 - Define starting Z position
;M660 H1 Z110 ; slot 0
M660 H2 Z57.950 ; slot 1
;M660 H3 Z119.999 ; slot 2
;M660 H4 Z55.50 ; slot 3
;M660 H5 Z68.5 ; slot 4

;CHANGE 2/7 - Define starting X and Y
;M6 T11 O1 X86 Y67 ; slot 0
M6 T12 O2 X70 Y60 ; slot 1
;M6 T13 O3 X45 Y84 ; slot 2
;M6 T14 O4 X17 Y25 ; slot 3
;M6 T15 O5 X-32 Y0 ; slot 4

;CHANGE 3-4/7 - Define temperature bed/nozzle, pauze untill S[oC] reached
M190 S67 ; bed 
;M109 T11 S ; slot 0
M109 T12 S77 ; slot 1
;M109 T13 S25 ; slot 2
;M109 T14 S25 ; slot 3
;M109 T15 S25 ; slot 4

;CHANGE 5/7 - Define prime and flow
M721 S25000 E1 P-5000 T12 ; no prime
M722 S25000 E1 P5000  T12 ; prime is dead

M221 P2000 S1.0 T12 Z0.100 W0.335  ; set flow

G21 ; set units to millimeters       
G91 ; coordinatess  : relative
G90 ; coordinates   : absolute       
M82 ; use absolute distances for extrusion      
G92 E0           

;CHANGE 6-7/7 - Printing start-up
;T0 ; slot 0
T1 ; slot 1
;T2 ; slot 2
;T3 ; slot 3
;T4 ; slot 4

G0 X0 Y0 ; goes to starting point xy
G0 Z0 H2 ; goes to starting point z
M722 S10000 E99999 P6000 I0 T12 ; prime
G4 P5000 ; wait P[ms]

; Printing
G1  X40 Y0  E1  F120
G1  X40 Y0.3    E1  
G1  X20 Y0.3    E1  
G1  X20 Y0.6    E1  
G1  X40 Y0.6    E1  
G1  X40 Y0.9    E1  
G1  X20 Y0.9    E1  
G1  X20 Y1.2    E1  
G1  X40 Y1.2    E1  
G1  X40 Y1.5    E1  
G1  X20 Y1.5    E1  
G1  X20 Y1.8    E1  
G1  X40 Y1.8    E1  
G1  X40 Y2.1    E1  
G1  X20 Y2.1    E1  
G1  X20 Y2.4    E1  
G1  X40 Y2.4    E1  
G1  X40 Y2.7    E1  
G1  X10 Y2.7    E1  

; Finalize printing
G0 Z50 ; go up Z[mm]
M109 T12 S25 ; slot 1 : temperature reset to RT
M721 S10000 E99999 P6000 I0 T12 ; unprime 
G4 P1000 ; wait P[ms]
M721 S10000 E99999 P6000 I0 T12 ; unprime 
G4 P10000 ; wait P[ms]
G53 ; clear offsets
M30 ; end of program