/// @description Kuribo Shoe Goomba logic

//Inherit event
event_inherited();

//Start jumping again
if (gravity == 0) {

    //If the goomba was jumping
    if (jumping == 2) {
    
        //Stop horizontal speed
        hspeed = 0;
    
        //End jump
        jumping = 0;
        
        //Jump again
        alarm[10] = 60
    }
}

//Jump fix
if (vspeed > 0)
&& (jumping == 1)
    jumping = 2;

//Set facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

