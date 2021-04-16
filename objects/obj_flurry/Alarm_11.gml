/// @description Follow the player

//If not in contact with a slippery surface
if (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0)) {
    
    if (hspeed != 0) {
    
        //Start moving
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = -1;
        else
            hspeed = 1;
    }
    
    //Change direction
    alarm[11] = 60+round(random_range(60,120));
}



