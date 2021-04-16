/// @description Thwomp logic

//Fall down if the player gets close
if (ready == 0)
&& (instance_exists(obj_playerparent))
&& (obj_playerparent.x > bbox_left-32)
&& (obj_playerparent.x < bbox_right+32)
&& (y < obj_playerparent.y)
    ready = 1;

//Otherwise if falling, land on ground
else if (ready == 1) {

    //Floor collision
    event_user(4);
    
    //When on ground
    if (gravity == 0) {
    
        //Play 'Thwomp' sound
        audio_play_sound(snd_thwomp, 0, false);        
        
        //Change state
        ready = 2;
        
        //Create smoke effects
        instance_create(bbox_left-8,bbox_bottom-8,obj_smoke);
        instance_create(bbox_right-8,bbox_bottom-8,obj_smoke);
        
        //Rise
        alarm[0] = 60;
    }
}

//Otherwise if ascending and nearby the start point, stop.
else if (ready == 3) && (y < ystart+1) {

    //Change state
    ready = 0;
    
    //Stop vertical movement
    vspeed = 0;
    y = ystart;
}

