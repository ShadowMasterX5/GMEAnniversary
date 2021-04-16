/// @description Custom wall script

//If the brick has been kicked
if (ready) {

    if (sprite_index == spr_bluebrick_th) {
    
        if ((hspeed < 0) && (collision_rectangle(bbox_left-hspeed,bbox_top+1,bbox_left,bbox_bottom-4,obj_solid,1,0)))
        || ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top+1,bbox_right+hspeed,bbox_bottom-4,obj_solid,1,0)))
            event_user(0);
    }
    else {
    
        //If moving left
        if (hspeed < 0) 
        && (collision_rectangle(bbox_left+hspeed,bbox_top+1,bbox_left,bbox_bottom-4,obj_solid,1,0)) {
        
            //If not outside view
            if (!outside_view()) {
            
                //Play 'Bump' sound
                audio_play_sound(snd_bump, 0, false);
                    
                //Bump nearby blocks
                instance_create(x-5,y+8,obj_shellbump);
                instance_create(x-8,y,obj_blockbumper);
            }   
            
            //Reverse speed
            hspeed = -hspeed;
            
            //Prevent getting embed on walls
            while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0))            
                x++;         
        }
        
        //Otherwise, if moving right
        else if (hspeed > 0)
        && (collision_rectangle(bbox_right,bbox_top+1,bbox_right+hspeed,bbox_bottom-4,obj_solid,1,0)) {
        
            //If not outside view
            if (!outside_view()) {
            
                //Play 'Bump' sound
                audio_play_sound(snd_bump, 0, false);
                    
                //Bump nearby blocks
                instance_create(x+5,y+8,obj_shellbump);
                instance_create(x-8,y,obj_blockbumper);
            }          
            
            //Reverse speed
            hspeed = -hspeed;
            
            //Prevent getting embed on walls
            while (collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-4,obj_solid,1,0))            
                x--;       
        }
    }    
}
else
    event_inherited();

