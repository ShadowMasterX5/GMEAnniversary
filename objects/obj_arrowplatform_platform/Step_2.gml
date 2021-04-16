/// @description Arrow platform logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.y < y-11)
&& (obj_playerparent.state < 2)) {

    //If the platform can change it's direction
    if (!ready) {
    
        //Change it
        ready = 1;
        
        //If the block can be changed
        if (type == 0) {
        
            //Play 'Move' sound
            audio_play_sound(snd_move, 0, false);
            
            //Set the default frame
            image_index = 4;
            
            //Change direction
            alarm[2] = 4;
            
            //If the direction was not set
            if (dir == 0) {
            
                if (obj_playerparent.xscale == -1)
                    dir = 2;
                else
                    dir = 4;
            }
        }
    }

    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-15);
    
    //Snap the player horizontally and prevent it from getting embed on a solid.
    obj_playerparent.x += x-xprevious;
    if (collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x--;
    else if (collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x++;   
}

