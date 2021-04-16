/// @description Ceiling Podoboo logic

//Make it fall when reaching start position.
if ((y > ystart-39) && (ready == true)) {

    //Make it fall.
    ready = false;
    gravity = 0.2;
    gravity_direction = 90;
}

//Bounce if outside the room.
if (bbox_top < -16) {

    if (!ready) {
    
        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[0] = 10;
    }
}

//Bounce in contact with lava.
lava = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_lava_ceiling,0,0);
if (lava) {

    //Bounce.
    if (!ready) && (vspeed < 0) {

        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[0] = 10;
        
        //Create lava splash
        with (instance_create(x-8,lava.bbox_bottom+12,obj_smoke))
            sprite_index = spr_splash_lava_up;
    }
}

//Set the scale.
xscale = 1;

//Prevent it from falling too fast.
if (vspeed < -6)
    vspeed = -6;

