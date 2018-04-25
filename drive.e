
d_speed     call start ret_addy
            be green speed num3 
            be blue speed num2
            be red speed num1  
            be black speed num0

drive       cp	0x800000f9	num1
	    cp	0x800000fa	num2

//each of these must have uncoditional branch to turning to avoid falling through to next one 
         //these will send the same signals to both pwm_right and pwm_left
green      cp highright num800k 
           cp highleft num800k 
           cp period num1mil 
           call pwmright ret_addy 
           call pwmleft ret_addy 
           be d_speed num1 num1

blue       cp highright num400k 
           cp highleft num400k 
           cp period num1mil 
           call pwmright ret_addy 
           call pwmleft ret_addy 
           be d_speed num1 num1

red        cp highright num200k 
           cp highleft num200k 
           cp period num1mil 
           call pwmright ret_addy 
           call pwmleft ret_addy 
           be d_speed num1 num1

black      cp highright num0 
           cp highleft num0 
           cp period num1mil 
           call pwmright ret_addy 
           call pwmleft ret_addy 
           be d_speed num1 num1

//turning     be t_right_h direction num*
            //be t_left_h direction num* 
            //be t_right_m direction num*
	   // be t_left_m direction num*
	    //be t_right_s direction num*
            //be t_left_s direction num*

    //each of these must have uncoditional branch to drive to avoid falling through to next one
   //these will send different signals to pwm_right and pwm_left depending on type of turn
//straight   be drive num1 num1

//t_right_h  add highleft highleft num* 
	  // sub highright highright num* 
           //call pwmright ret_addy 
           //call pwmleft ret_addy 
        //   be d_speed num1 num1

//t_left_h   add highright highright num* 
	//   sub highleft highleft num* 
         //  call pwmright ret_addy 
         //  call pwmleft ret_addy 
          // be d_speed num1 num1

//t_right_m  add highleft highleft num* 
	  // sub highright highright num* 
         //  call pwmright ret_addy 
          // call pwmleft ret_addy 
         //  be d_speed num1 num1

// t_left_m   add highright highright num* 
	//   sub highleft highleft num* 
        //   call pwmright ret_addy 
       //    call pwmleft ret_addy 
          // be d_speed num1 num1

//
end2        halt


ret_addy   0 
num800k    800000
num1mil    1000000
num100k    100000
num200k    200000
num400k    400000

#include main.e
#include pwmright.e
#include pwmleft.e
