/// @description Bombguy logic

//Inherit event
event_inherited();

//Decrement timer
if (aa > 0) { //If the timer is still going...

    aa--;
    if (aa < 120) {
    
        //Set the flashing sprite
        sprite_index = spr_bombguy_th;
        
        //Make sure to stop horizontal speed if on ground
        if (gravity == 0) {
        
            //If moving
            if (hspeed != 0)
                hspeed = 0;
        }
        
        //Animate faster
        image_speed = 0.3;
    }
}

//Otherwise, explode.
else {

    instance_create(x-8,y,obj_explosion);
    instance_destroy();
    exit;
}

//Face towards direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

