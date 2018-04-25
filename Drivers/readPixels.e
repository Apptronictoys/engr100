readBegin      
        
        
loopOuter       be    end  x1   xEnd
				add x1 x1 num1 //increment
                cp    y1    num0
loopInner       be    loopOuter    y1    yEnd
                call    vga_read    ret_address
                
    			// color now has 24 bit number
    			cp tempColor color
    			and    tempColor    color    getFirstEight
    			cp    bPart    tempColor
       
    			sr    color    color    num8
    			cp    tempColor    color
    			and    tempColor    color    getFirstEight
    			cp    gPart    tempColor
    			    
    			sr    color     color    num8
    			cp    tempColor    color
    			and    tempColor    color    getFirstEight
    			cp    rPart    tempColor

    			// first 5 bits: red   [23:19]
    			add r r rPart

    			// middle 5 bits: green [15:11]
    			add g g gPart

    			// last 5 bits: blue   [7:3]
    			add b b bPart
    			
    		

    			// increment
    			add y1 y1 num1

    			// unconditional branch back up to loop
    			be loopInner num0 num0

 
end  			// find highest out of r, g, b 
           
                 	// print test
  
               div    r     r    area
               div    g     g    area
               div    b     b    area
               
               cp    1210    area
                cp   1211    r
                cp   1212    g
                cp   1213    b
               
              
        
               ret    comeBackDirection





rPart    0
gPart    0
bPart    0

width    0
height    0
area    0

index    0

count    0
color    16711680
tempColor    0
getFirstEight  255
ret_address    0

num175    175
num335    335
num50     50


num8    8
val 6574080

#include vga.e
