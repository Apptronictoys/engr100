                call     vga_write    ret_address
                cp    x1    num335
                cp    x2    xEnd
                
                sub     width    x2    x1
                sub     height    y2    y1
                mult    area    width    height

    
                cp    val   color
                call vga_write ret_address
                cp    x1    num175
                cp    y1    num0
        
                sub     width    x2    x1
                sub     height    y2    y1
                mult    area    width    height





determineDirectionBegin       cp    x1    num175
                              cp    x2    num334
                              cp    y1    num0
                              cp    y2    num100
                              
                              call    readBegin    comeBackDirection
                                
                              cp    rLeft    r
                              cp    gLeft    g
                              cp    bLeft    b
                          
                              
                              cp    r     num0
                              cp    g     num0
                              cp    b     num0
                              
                              cp    x1    num335
                              cp    x2    xEnd
                              
                              sub   width    x2    x1
                              mult    area    width   height
                              
                              call    readBegin    comeBackDirection
                              
                              cp    rRight    r
                              cp    gRight    g
                              cp    bRight    b
                              
              
                              
                                
                              
                              
                     
                           
                              
                          
                              
                              halt
                              
                              
                              

r    0
g    0
b    0
rLeft   0
gLeft   0
bLeft    0
rRight   0
gRight    0
bRight    0
comeBackDirection    0




x1    175
y1    0
num0    0
num1    1
num334    334
num100    100
xEnd    495
yEnd    100
x2    334
y2    100

#include readPixels.e
