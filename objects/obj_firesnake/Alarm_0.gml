/// @description Jump towards the player

if (gravity == 0) {

    //Set the horizontal speed
    hspeed = 0.5*sign(xscale);
    prevhspeed = hspeed;
    
    //Set the vertical speed.
    if (instance_exists(obj_playerparent)) { //If the player does exist.
    
        //If the player is above.
        if (obj_playerparent.y < y) {
        
            //Set the vertical speed.
            vspeed = -3.2;
            
            //Jump
            jumping = 1;
            
            //Make the body jump too.
            for (i=0; i<4; i++) {
            
                mybody[i].alarm[0] = 5+(5*i)
                mybody[i].type = 0;                
            }
        }
        
        //otherwise, if it's below or in the same y position.
        else if (obj_playerparent.y >= y) {

            //Set the vertical speed.
            vspeed = -1.75;
            
            //Jump
            jumping = 1;
            
            //Otherwise, if it's below.
            if (obj_playerparent.y > y) {
            
                //Check for nearby solid areas and allow jumping.
                mysolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_semisolid,0,0);
                if (mysolid) 
                && (mysolid.image_yscale <= 1) 
                && (mysolid.object_index != obj_solid) {
                
                    //Find nearest layer 9 tile
                    var tile;
                    tile = tile_layer_find(9, x, bbox_bottom+1);
                    
                    //If there's a layer 9 tile below
                    if (tile = -1) {
                        
                        //Pass through semisolids
                        ready = 1;
                        
                        //Make the body jump too.
                        for (i=0; i<4; i++) {
                        
                            mybody[i].alarm[0] = 5+(5*i)
                            mybody[i].type = 2;                
                        }
                    }
                    
                    //Otherwise, do not allow the fire snake to pass through semisolids
                    else {
                    
                        //Make the body jump too.
                        for (i=0; i<4; i++) {
                        
                            mybody[i].alarm[0] = 5+(5*i)
                            mybody[i].type = 1;                
                        }                                                    
                    }
                }
                else {
                
                    //Make the body jump too.
                    for (i=0; i<4; i++) {
                    
                        mybody[i].alarm[0] = 5+(5*i)
                        mybody[i].type = 1;                
                    }                    
                }
            }
            else if (obj_playerparent.y == y) {
            
                //Make the body jump too.
                for (i=0; i<4; i++) {
                
                    mybody[i].alarm[0] = 5+(5*i)
                    mybody[i].type = 1;                
                }
            }
        }
    }
    
    //Otherwise, if it does not exist.
    else {
        
        //Set the vertical speed.
        vspeed = -3.2;
        
        //Jump
        jumping = 1;
        
        //Make the body jump too.
        for (i=0; i<4; i++) {
        
            mybody[i].alarm[0] = 5+(5*i)
            mybody[i].type = 0;                
        }
    }
}
else {

    alarm[0] = 1;
    exit;
}

