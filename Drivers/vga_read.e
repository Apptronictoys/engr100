vga_read_driver     cp 0x80000060 num0      //vga_command = 0	
			        cp 0x80000063 x1 		// vga_x1 = x1
			        //cp 0x80000065 x2 		// vga_x2 = x2

			        cp 0x80000064 y1 		// vga_y1 = y1		
			        //cp 0x80000066 y2 		// vga_y2 = y2
		
			        //cp 0x80000067 val 	    // vga_color_write = val
	
			        cp 0x80000062 num0 		// vga_write = 0
				
			        cp 0x80000060 num1 		// vga_command = 1
			
			        cp color 0x80000068 // vga_color_read[23:0]
		
vga_read_wait	    bne vga_read_wait 0x80000061 num1 	// branch if vga_response is one
vga_read_return	    ret ret_address

// 0x80000060	write	bit 0: vga_command
// 0x80000061	read	bit 0: vga_response
// 0x80000062	write	bit 0: vga_write
// 0x80000063	write	bits 9-0: vga_x1[9:0]
// 0x80000064	write	bits 9-0: vga_y1[9:0]
// 0x80000065	write	bits 9-0: vga_x2[9:0]
// 0x80000066	write	bits 9-0: vga_y2[9:0]
// 0x80000067	write	bits 23-0: vga_color_write[23:0]
// 0x80000068	read	bits 23-0: vga_color_read[23:0]
