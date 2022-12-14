; tfree1.g
; called when tool 1 is freed
; generated by RepRapFirmware Configuration Tool v3.3.6 on Fri Nov 26 2021 05:24:36 GMT+0000 (Coordinated Universal Time)


; Go to Height of Tool 1 parking posts. X,Y should be 0 (center)
;WARNING WARNING WARNING Below uses reference to max height. If max height changes, this must change.
G1 Z285.7 F5000					; (MAX HEIGHTmm - 26.5mm) is the height where the parking posts insert into the tool. It's based off a max height of XXX.XX. A 26.5mm difference from max height.

; Move into parking posts
G1 X50 Y28.868 F12000				; quickly to start of posts 
;G1 X75 Y43.301 F200
;G1 X80 Y46.188 F200
;G1 X87 Y50.229 F2000
G1 X92 Y53.116 F2000
;G1 X94.25 Y54.415 F2000		; more slowly in 
;G1 X94.8 Y54.733 F2000		; more slowly in 

; Rotate inner ring of effector to disengage magnets
G90
G1 U-70 F3600

G91                       	; relative positioning
G1 Z-75           		; move effector down from tool and clear bottom of the parked tool  

G90                       	; absolute positioning
G1 X0 Y0 F6000            	; move X+Y to the centre
G1 U0
G28