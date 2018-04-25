start       be vga_black num0 num0       
loop        call vga_write ret_address
            
            
            
            //cp x1  xRead 
            //cp y1  yRead
            //cp 192 x1
            //cp 193 y1 
            call vga_read ret_address
            cp 191 color                     
			halt


// Make the background black		
vga_black   cp 0x80000060 num0      //vga_command = 0	
            cp 0x80000063 x_min 	// set whole screen to green
			cp 0x80000065 x_max	

			cp 0x80000064 y_min 				
			cp 0x80000066 y_max 		

			cp 0x80000067 black 	// vga_color_write =green
	
			cp 0x80000062 num1 		// vga_write = 1
				
			cp 0x80000060 num1 		// vga_command = 1
wait2	    bne wait2 0x80000061 num1 
            be loop num0 num0


// driver parameters
color 16711567
val 6574080
x1 145
y1 0
x2 495
y2 100
ret_address 0

// set screen to green
x_min 0
y_min 0
x_max 639
y_max 479
black 0

xRead  175
yRead  25

// constants
num1 		1
num0 		0

i 			0
#include vga.e
