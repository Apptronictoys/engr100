pwmright     cp 0x800000f2 period 
             cp 0x800000f3 highright
             cp 0x800000f0 num1
loop         bne loop 0x800000f1 num1 
             cp 0x800000f0 num0
loop2        bne loop2 0x800000f1 num0 
             ret ret_addy

period 0
highright   0

