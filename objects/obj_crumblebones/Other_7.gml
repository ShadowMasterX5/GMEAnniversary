/// @description End animation or revive

//If animating forward
if (image_speed > 0) {
    
    //Stop the animation
    image_speed = 0;
    image_index = 1;
}

//Otherwise, if animating backwards
else if (image_speed < 0) {

    //Turn into the correct object
    switch (sprite_index) {
    
        //Dry Bones
        case (spr_drybones_crumble): {
        
            with (instance_create(x,y,obj_drybones)) {
            
                hspeed = 0.5*sign(other.xscale);
            }
            instance_destroy();
        } break;
        
        //Bony Beetle
        case (spr_bonybeetle_crumble): {
                
            with (instance_create(x,y,obj_bonybeetle)) {
            
                hspeed = 0.5*sign(other.xscale);
            }
            instance_destroy();            
        } break;
    }
}

