/// @description Bump the block sideways

//If the block can be bumped and the player exists
if (ready == 0) 
&& (instance_exists(obj_playerparent)) {

    //If the player is at the right
    if (collision_rectangle(bbox_right,y,bbox_right+2,y+15,obj_playerparent,0,0)) {
    
        //Push the player backwards
        obj_playerparent.xspeed = 3;
        
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
        
        //Bump the block
        hspeed = -2;
        ready = 1;
        
        //Reverse direction
        alarm[0] = 4;
    }
    
    //Otherwise, if the player is at the left
    else if (collision_rectangle(bbox_left-2,y,bbox_left,y+15,obj_playerparent,0,0)) {
    
        //Push the player backwards
        obj_playerparent.xspeed = -3;
        
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
        
        //Bump the block
        hspeed = 2;
        ready = 1;
        
        //Reverse direction
        alarm[0] = 4;
    }
}

