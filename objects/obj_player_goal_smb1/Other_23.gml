/// @description Animate

//When on flagpole
if (ready < 2) {

    //Set climbing pose
    sprite_index = scr_mario_goal();

    //Animate
    if (vspeed > 0)
        image_speed = 0.15;
    else {
    
        image_speed = 0;
        image_index = 0;
    }
}

//When not on flagpole
else {

    //When on the ground, use walking sprite.
    if (gravity = 0) { 
    
        if (hspeed == 0) {
        
            //Set idle pose
            sprite_index = scr_mario_clear();
            image_speed = 0;
            image_index = 0;
        }
        else {
        
            //Set walking pose
            sprite_index = scr_mario_walk();
            
            //Animate
            image_speed = 0.065+abs(hspeed)/7.5;
        }
    }
    
    //Otherwise
    else {
    
        //Use the jump sprite
        sprite_index = scr_mario_jump();
    
        //Use the correct image index
        image_index = 0;
    }
}

