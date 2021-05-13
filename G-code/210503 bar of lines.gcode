;Marc is in the house :)
;Jeroen est?? a la casa (:
;========================  
;Home all axes            
G28 Z0 ; home Z
G28 X0 Y0 ; home X/Y

;======
;CHANGE 1/6 - Define starting Z position
;remove semicomas from used slots

;M660 H1 Z110 ; slote 0

M660 H2 Z57.950 ; slote 1
;M660 H3 Z119.999 ; slote

;M660 H4 Z55.50 ; slote 3
;M660 H5 Z68.5 ; slote 4


;=====
;CHANGE 2/6 - Define starting X and Y
;remove semicomas from used slots

;M6 T11 O1 X86 Y67 ; slot 0

M6 T12 O2 X70 Y60 ; slot 1
;M6 T13 O3 X45 Y84 ; slot 2

;M6 T14 O4 X17 Y25 ; slot 3
;M6 T15 O5 X-32 Y0 ; slot 4

;======      
;CHANGE 3/6 - Printing temperature
;remove semicomas to have temperature

M190 S67   ; set bed Ta and pause printing until Ta 

;M109 T11 S[temperature] ; slot 0 : set Ta and pause printing until Ta is reached

M109 T12 S77 ; slot 1 : set Ta and pause printing until Ta is reached

;M109 T13 S25 ; slot 2 : set Ta and pause printing until Ta is reached
;M109 T14 S25 ; slot 3 : set Ta and pause printing until Ta is reached
;M109 T15 S[temperature] ; slot 4 : set Ta and pause printing until Ta is reached

;======
;CHANGE 4/6 - Set temperature for bed, set print sttngs flow
;remove semicomas to have temperature

M721 S25000 E1 P-5000 T12 ; no prime
M722 S25000 E1 P5000  T12 ; prime is ded

M221 P2000 S1.0 T12 Z0.100 W0.335  ; set flow 

;======= 
G21 ; set units to millimeters       
G91 ; coordinatess  : relative
G90 ; coordinates   : absolute       
M82 ; use absolute distances for extrusion      
G92 E0           

;======
;CHANGE 5/6 - Invoke starting X and Y  
;remove semicomas from used slots
     
;T0 ; slot 0

T1 ; slot 1

;T2 ; slot 2
;T3 ; slot 3
;T4 ; slot 4
 
;======
;CHANGE 6/6 -Invoke starting Z 
;add to the first move at the end Hx 

;==== START OF PRINTING

G0 X0 Y0 ; goes to starting point xy
G0 Z0 H2 ; goes to starting point z

M722 S10000 E99999 P6000 I0 T12

G4 P5000

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


G0 Z50
 
M109 T12 S25 ; slot 1 : set Ta and pause printing until Ta is reached

M721 S10000 E99999 P6000 I0 T12
G4 P1000
M721 S10000 E99999 P6000 I0 T12
G4 P1000
;M721 S10000 E99999 P6000 I0 T12


G4 P10000


G53 ; clear offsets
M30 ; e