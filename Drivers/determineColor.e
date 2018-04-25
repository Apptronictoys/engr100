
//determineColorBegin      call   readBegin    comeBack

                         blt   compRedGreen    num30   r
                         blt   compRedGreen    num30   g
                         blt   compRedGreen    num30   b
                         cp    speed    num0
                         halt
                         
                         

      
//Compare red to green. If red is smaller, compare blue to green
compRedGreen              blt    compGreenBlue    r    g

//Compare Red to blue. If blue is smaller, go to redLargest
compRedBlue               blt    redLargest    b    r
                          cp    speed   num2
                          halt
                          
redLargest                cp    speed    num10
                          halt
//If green was larger than red, compare green to blue
compGreenBlue             blt    blueLargest   g    b
                          cp    speed    num3
                          halt
blueLargest               cp    speed    num2   
                          halt   
                     
      


comeBack    0
num10    1
num3    3
num2    2
num30   30
num0    0
num1    1
r    0
g    0
b    0
xEnd    495
yEnd    100
x2    334
y2    100
x1    175
y1    0

//0= stop, 1= slow, 2= medium, 3= fast
speed    0
#include readPixels.e

