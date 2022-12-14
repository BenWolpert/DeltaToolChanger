; bed.g file for RepRapFirmware, generated by Escher3D calculator
; 13 points, 6 factors, probing radius: 100, probe offset (0, 0)
M561
G28
G30 P0 X0.00 Y100.00 Z-99999 H0
G30 P1 X86.60 Y50.00 Z-99999 H0
G30 P2 X86.60 Y-50.00 Z-99999 H0
G30 P3 X0.00 Y-100.00 Z-99999 H0
G30 P4 X-86.60 Y-50.00 Z-99999 H0
G30 P5 X-86.60 Y50.00 Z-99999 H0
G30 P6 X0.00 Y50.00 Z-99999 H0
G30 P7 X43.30 Y25.00 Z-99999 H0
G30 P8 X43.30 Y-25.00 Z-99999 H0
G30 P9 X0.00 Y-50.00 Z-99999 H0
G30 P10 X-43.30 Y-25.00 Z-99999 H0
G30 P11 X-43.30 Y25.00 Z-99999 H0
G30 P12 X0 Y0 Z-99999 S6




; bed.g
; called to perform automatic delta calibration via G32
;
; generated by RepRapFirmware Configuration Tool v3.3.6 on Fri Nov 26 2021 05:24:35 GMT+0000 (Coordinated Universal Time)
;M561 ; clear any bed transform
; Probe the bed at 6 peripheral and 6 halfway points, and perform 6-factor auto compensation
; Before running this, you should have set up your Z-probe trigger height to suit your build, in the G31 command in config.g.
;G30 P0 X0 Y105 H0 Z-99999
;G30 P1 X101.93 Y58.85 H0 Z-99999
;G30 P2 X101.93 Y-58.85 H0 Z-99999
;G30 P3 X0 Y-105 H0 Z-99999
;G30 P4 X-101.93 Y-58.85 H0 Z-99999
;G30 P5 X-101.93 Y58.85 H0 Z-99999
;G30 P6 X0 Y58.8 H0 Z-99999
;G30 P7 X50.92 Y29.4 H0 Z-99999
;G30 P8 X50.92 Y-29.4 H0 Z-99999
;G30 P9 X0 Y-58.8 H0 Z-99999
;G30 P10 X-50.92 Y-29.4 H0 Z-99999
;G30 P11 X-50.92 Y29.4 H0 Z-99999
;G30 P12 X0 Y0 H0 Z-99999 S6
; Use S-1 for measurements only, without calculations. Use S4 for endstop heights and Z-height only. Use S6 for full 6 factors
; If your Z probe has significantly different trigger heights depending on XY position, adjust the H parameters in the G30 commands accordingly. The value of each H parameter should be (trigger height at that XY position) - (trigger height at centre of bed)


