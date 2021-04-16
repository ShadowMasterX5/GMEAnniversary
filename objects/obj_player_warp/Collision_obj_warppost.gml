/// @description Warp to another coordinate

//Snap the camera on the new coordinates
if (instance_exists(obj_levelcontrol)) {

    //Activate barrier
    with (obj_levelcontrol) {
    
        //Manage barrier
        barrier = 1;
        
        //Deactivate barrier
        alarm[7] = 3;
    }
    
    //Set position
    obj_levelcontrol.x = other.postx+16;
    obj_levelcontrol.y = other.posty+16;
}

//Go to the new position
x = other.postx+16;
y = other.posty+16;

