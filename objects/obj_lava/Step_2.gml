/// @description Lava logic (Player)
/// @param Player

//Kill the player in contact with lava
if (instance_exists(obj_playerparent)) {

    //With the player
    with (obj_playerparent) {
    
        //Lava check
        lava = collision_rectangle(bbox_left-7,bbox_top-7,bbox_right+7,bbox_bottom+7,obj_lava,1,0);
    
        //If lava exists
        if (lava) {
        
            //If the lava has a collision attached
            if (lava.mycol == obj_semisolid) 
            || (lava.mycol == obj_slope_r) 
            || (lava.mycol == obj_slope_l) 
            || (lava.mycol == obj_slope_sr) 
            || (lava.mycol == obj_slope_sl) {
            
                //If the player is wearing a baburu shoe, ignore
                if (global.mount == 2)
                || (global.mountcolour == 1)
                    exit;
                    
                //Otherwise, kill player
                else {
                
                    //Kill the player and leave a smoke trail
                    with (instance_create(x,y,obj_player_dead)) {
                    
                        image_blend = c_gray;
                        alarm[3] = 1;
                    }
                    
                    //Destroy
                    instance_destroy();
                }
            }
            
            //Otherwise, kill the player
            else {
            
                //Kill the player and leave a smoke trail
                with (instance_create(x,y,obj_player_dead)) {
                
                    image_blend = c_gray;
                    alarm[3] = 1;
                }
                
                //Destroy
                instance_destroy();
            }
        }
    }
}

