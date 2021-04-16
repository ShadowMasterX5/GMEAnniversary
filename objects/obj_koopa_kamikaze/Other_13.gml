/// @description Custom wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0))) {

    //Play 'Bump' sound
    audio_play_sound(snd_bump, 0, false);
    
    //Create effects
    instance_create(x-8,y,obj_blockbumper);
    instance_create(x-5,y+8,obj_shellbump);
    
    //Reverse horizontal speed
    hspeed = -hspeed;
    
    //Prevent getting embed on walls
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,0,0))
        x++;
}

else if ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-4,obj_solid,1,0))) {

    //Play 'Bump' sound
    audio_play_sound(snd_bump, 0, false);
    
    //Create effects
    instance_create(x-8,y,obj_blockbumper);
    instance_create(x+5,y+8,obj_shellbump);
    
    //Reverse horizontal speed
    hspeed = -hspeed;
    
    //Prevent getting embed on walls
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,0,0))
        x--;
}

