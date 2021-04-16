/// @description Laser logic

//If the statue can shoot
if (ready == 1) {
    
    //Check if Mario does exist
    if (instance_exists(obj_playerparent)) {
    
        //If Mario is inside the trigger area, generate the laser.
        if (obj_playerparent.bbox_left < x+8)
        && (obj_playerparent.bbox_right > x-8) {
        
            with (instance_create(xstart-3, ystart+10, obj_laser)) 
                motion_set(225, 7.25);
        }
    }
}

