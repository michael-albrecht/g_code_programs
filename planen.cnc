#100 = -15 ;X start
#101 = 410 ;X end
#102 = #100; X
#200 = 8 ;Y start
#201 = 400 ; Y end
#202 = #200 ; Y
#300 = -0.25 ;Z
F1000
S14000
G00 Z30
;M03
G01 X#100 Y#200 Z#300  


WHILE [#202 < 400]
Y#202
IF [#102 == #100]
#102 = #101 
ELSE
#102 = #100 
ENDIF
G01 X#102 
#202 = [#202 + 32]
ENDWHILE

G00 Z30
G00 X0 Y0
M05
M30