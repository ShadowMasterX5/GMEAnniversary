/// @description Custom wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-1+hspeed,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1+hspeed,bbox_bottom-4,obj_solid,1,0))) 
&& (ready == 1) {

    //Set falling state
    ready = 2;

    //Play 'Bump' sound
    audio_play_sound(snd_bump, 0, false);
    
    //Set the vertical speed
    vspeed = -3;
    
    //Reverse horizontal speed
    hspeed = -hspeed/4;
}

