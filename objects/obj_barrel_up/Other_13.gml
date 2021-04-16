/// @description Default wall collision

//If moving left
if (hspeed < 0) 
&& (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0)) {

    //If not outside view
    if (!outside_view()) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
            
        //Bump nearby blocks
        instance_create(bbox_left,y+8,obj_shellbump);
        instance_create(x,y,obj_blockbumper);
    }
        
    //Destroy
    event_user(0);
}

//Otherwise, if moving right
else if (hspeed > 0)
&& (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0)) {

    //If not outside view
    if (!outside_view()) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
            
        //Bump nearby blocks
        instance_create(bbox_right,y+8,obj_shellbump);
        instance_create(x,y,obj_blockbumper);
    }
    
    //Destroy
    event_user(0);      
}

