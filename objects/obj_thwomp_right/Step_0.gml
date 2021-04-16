/// @description Thwomp logic

//Go to the left if the player gets close
if (ready == 0)
&& (instance_exists(obj_playerparent))
&& (collision_rectangle(bbox_right,bbox_top,bbox_right+128,bbox_bottom,obj_playerparent,0,0)) {

    //Set the gravity
    gravity = 0.2;
    
    //Go to the left
    ready = 1;
}

//Otherwise if moving to the left, check for a solid
else if (ready == 1) {
    
    //Check for a solid
    mysolid = collision_rectangle(bbox_right,bbox_top+4,bbox_right+hspeed,bbox_bottom-1,obj_solid,0,0);
    
    //If there's a solid
    if (mysolid) {
    
        //Play 'Thwomp' sound
        audio_play_sound(snd_thwomp, 0, false);
        
        //Change state
        ready = 2;
    
        //Stop horizontal speed
        hspeed = 0;
        
        //Stop gravity
        gravity = 0;
        
        //Create smoke effects
        instance_create(bbox_right-8,bbox_top-8,obj_smoke);
        instance_create(bbox_right-8,bbox_bottom-8,obj_smoke);
        
        //Snap to the right of the solid
        x = mysolid.bbox_left-12;
        
        //Move to start
        alarm[0] = 60;
    }
}

//Otherwise if ascending and nearby the start point, stop.
else if (ready == 3) && (x < xstart+1) {

    //Change state
    ready = 0;
    
    //Stop vertical movement
    hspeed = 0;
    x = xstart;
}

//Cap horizontal speed
if (hspeed > 4)
    hspeed = 4;

