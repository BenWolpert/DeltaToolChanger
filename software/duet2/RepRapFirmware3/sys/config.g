; Configuration file for Duet WiFi (firmware version 3.3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.3.6 on Fri Nov 26 2021 05:24:35 GMT+0000 (Coordinated Universal Time)

; General preferences
G90                                                 ; send absolute coordinates...
M83                                                 ; ...but relative extruder moves
M550 P"Duet Delta Toolchanger"                      ; set printer name
M665 R116.492 L267.18 B105 H312.5                 ; Set delta radius, diagonal rod length, printable radius and homed height. homed height was 312.59. R117.016 Incorrect arm length = 269.88, correct = 267.18
M666 X0.15 Y0.57 Z-0.72                                       ; put your endstop adjustments here, or let auto calibration find them ; test comment

; Network
M552 S1                                             ; enable network
M586 P0 S1                                          ; enable HTTP
M586 P1 S0                                          ; disable FTP
M586 P2 S0                                          ; disable Telnet

; Drives
M569 P0 S0                                          ; physical drive 0 goes forwards
M569 P1 S0                                          ; physical drive 1 goes forwards
M569 P2 S0                                          ; physical drive 2 goes forwards
M569 P3 S1                                          ; physical drive 3 goes forwards
M569 P4 S1                                          ; physical drive 4 goes forwards
M569 P5 S0											; physical drive 5 goes forwards. This should be the U axis effector torus motor
M584 X0 Y1 Z2 U5 E3:4                                  ; set drive mapping
M350 X16 Y16 Z16 U16 E16:16 I1                          ; configure microstepping with interpolation
M92 X200.00 Y200.00 Z200.00 U200.00 E809.75:809.75          ; set steps per mm
M566 X1200.00 Y1200.00 Z1200.00 U1200.00 E1200.00:1200.00    ; set maximum instantaneous speed changes (mm/min)
M203 X18000.00 Y18000.00 Z18000.00 U3600.00 E1200.00:1200.00 ; set maximum speeds (mm/min)
M201 X1000.00 Y1000.00 Z1000.00 U1000.00 E1000.00:1000.00    ; set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 U1000 E1000:1000 I40               ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                             ; Set idle timeout

; Axis Limits
M208 Z0 S1                                          ; set minimum Z
M208 U-70:70

; Endstops
M574 X2 S1 P"xstop"                                 ; configure switch-type (e.g. microswitch) endstop for high end on X via pin xstop
M574 Y2 S1 P"ystop"                                 ; configure switch-type (e.g. microswitch) endstop for high end on Y via pin ystop
M574 Z2 S1 P"zstop"                                 ; configure switch-type (e.g. microswitch) endstop for high end on Z via pin zstop

; Z-Probe
M558 P5 C"^e0stop" H5 F120 T6000                 ; set Z probe type to switch and the dive height + speeds 
;M558 H40                                            ;*** Remove this line after delta calibration has been done and new delta parameters have been saved
G31 P500 X0 Y5 Z-12.35                                  ; set Z probe trigger value, offset and trigger height
M557 R100 S20                                       ; define mesh grid

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138      ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                               ; create bed heater output on bedheat and map it to sensor 0
M307 H0 B0 R0.239 C855.4 D7.92 S1.00 V23.8 			; M307 H0 B0 S1.00                                    ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                             ; map heated bed to heater 0
M143 H0 S120                                        ; set temperature limit for heater 0 to 120C
M308 S1 P"e0temp" Y"thermistor" T100000 B4680 C6.455513e-8  ; B4138       ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                                ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 R2.280 C326.8 D10.22 S1.00 V24.1			; M307 H1 B0 S1.00  ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S280                                        ; set temperature limit for heater 1 to 280C
M308 S2 P"e1temp" Y"thermistor" T100000 B4680 C6.455513e-8  ; B4138       ; configure sensor 2 as thermistor on pin e1temp
M950 H2 C"e1heat" T2                                ; create nozzle heater output on e1heat and map it to sensor 2
;M307 H2 B0 R2.652 C155.8 D10.67 S1.00 V24.1			;M307 H2 B0 S1.00                                    ; disable bang-bang mode for heater  and set PWM limit
M307 H2 B0 R2.528 C179.1:174.8 D10.23 S1.00 V24.1
M143 H2 S280                                        ; set temperature limit for heater 2 to 280C

; Fans
M950 F1 C"duex.fan3" Q500 T40                               ; create fan 0 on pin fan0 and set its frequency
M106 P1 S255 H1                                ; set fan 0 value. Thermostatic control is turned on
M950 F2 C"duex.fan4" Q500 T40                               ; create fan 1 on pin fan1 and set its frequency
M106 P2 S255 H2 T35                                 ; set fan 1 value. Thermostatic control is turned on

; Tools
M563 P0 S"Hotend 1" D0 H1 F0                        ; define tool 0
G10 P0 X0 Y0 Z-0.4                                   ; set tool 0 axis offsets Should be a positive number
G10 P0 R0 S0                                        ; set initial tool 0 active and standby temperatures to 0C
M563 P1 S"Hotend 2" D1 H2 F1                        ; define tool 1
G10 P1 X0.4 Y1.1 Z-0.2                                  ; set tool 1 axis offsets should be a negative number; this tool is clearly taller somehow 
G10 P1 R0 S0                                        ; set initial tool 1 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M911 S10 R11 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000"  ; set voltage thresholds and actions to run on power loss

