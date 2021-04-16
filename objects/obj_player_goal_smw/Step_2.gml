/// @description Handle player sprites

//Inherit 'End Step' event
event_inherited();

//Make sure the player gets the correct sprite
if (gravity == 0) {

    //If the player is not moving horizontally
    if (hspeed == 0) {
    
        //If the player is doing the victory pose
        if (ready2 == 1) {
    
            //Set clear pose
            sprite_index = scr_mario_clear();
            
            //Do not animate
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, set the idle pose
        else {
        
            //Set walking pose
            sprite_index = scr_mario_walk();
            
            //Do not animate
            image_speed = 0;
            image_index = 0;            
        }
    }
    
    //Otherwise
    else {
    
        //Set clear pose
        sprite_index = scr_mario_walk();
        
        //Animate yoshi
        anim += 0.065+abs(hspeed)/7.5;
                
        //Animate
        image_speed = 0.065+abs(hspeed)/7.5;
    }
}
else {

    //Set the jump sprite
    sprite_index = scr_mario_jump();
    
    //Do not animate
    image_speed = 0;
    
    //Set the frame
    if (vspeed < 0)
        image_index = 0;
    else
        image_index = 1;
}

