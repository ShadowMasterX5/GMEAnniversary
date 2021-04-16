/// @description Manage player events

//Make sure the player exists
if (instance_exists(obj_playerparent)) {

    with (obj_playerparent) {
    
        //If the player is moving to the right and there's a wall on the way.
        if (xspeed > 0) 
        && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-4,other.id,0,0)) {
        
            //Stop horizontal speed
            xspeed = 0;
            
            //Prevent the player from getting embed on the wall
            while (collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-4,other.id,0,0))
            && (!collision_point(x,bbox_top+4,other.id,0,0))
                x--;
        }
        
        //Otherwise, if the player is moving to the left and there's a wall on the way.
        else if (xspeed < 0)
        && (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-4,other.id,0,0)) {
        
            //Stop horizontal speed
            xspeed = 0;
            
            //Prevent the player from getting embed on the wall
            while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-4,other.id,0,0))
            && (!collision_point(x,bbox_top+4,other.id,0,0))
                x++;
        }
        
        //If the player is moving up
        if (yspeed < 0) 
        && (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,other.id,1,0)) {
        
            //Prevent the player from getting embed on a ceiling
            if (state > 1) {
            
                while (collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,other.id,0,0))
                    y++;
            }
            
            //Stop vertical movement
            yspeed = 0;
            
            //Play 'Bump' sound if not climbing
            if (state == 2)
                audio_play_sound(snd_bump, 0, false);
        }
    }
    
    //Make sure if the player is below the block
    if (obj_playerparent.y > y-11) {
    
        //If moving down
        if (vspeed > 0) {
        
            //With the player
            with (obj_playerparent) {
            
                //If the player is below the platform
                while (collision_rectangle(bbox_left,bbox_top-1+other.id.vspeed,bbox_right,bbox_top,other.id,0,0))
                    y += other.id.vspeed;
            }
        }

        //Push the player in the direction the platform moves    
        if ((x-xprevious < 0) && (collision_rectangle(bbox_left-2-hspeed,bbox_top+4,bbox_left-2,bbox_bottom-1,obj_playerparent,0,0)))
        || ((x-xprevious > 0) && (collision_rectangle(bbox_right+2,bbox_top+4,bbox_right+2+hspeed,bbox_bottom-1,obj_playerparent,0,0)))
            obj_playerparent.x += x-xprevious;
    }
}

