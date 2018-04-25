pwmleft      cp 0x80000107 period 
             cp 0x80000108 highleft
             cp 0x80000105 num1
loopl         bne loopl 0x80000106 num1 
             cp 0x80000105 num0
loopl2        bne loopl2 0x80000106 num0 
             ret ret_addy

highleft   0

