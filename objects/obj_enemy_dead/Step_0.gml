/// @description Dead enemy logic

//Check for quicksand
if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_quicksand,0,0)) {

    //Set the depth
    depth = 10;

    //Stop horizontal speed
    hspeed = 0;
    
    //Sink slowly and stop if moving up
    if (vspeed < 0)
        vspeed = 0;
    else {
    
        gravity = 0.1;
        if (vspeed > 0.1)
            vspeed = 0.1;
    }
}

//Cap vertical speed
if (vspeed > 0) {

    //If not in water
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0)) {

        //Cap vertical speed
        if (vspeed > 4)
            vspeed = 4;
    }
    else {
    
        //Cap vertical speed
        if (vspeed > 1)
            vspeed = 1;
    }
    
    //Check if outside the view
    if (y > __view_get( e__VW.YView, 0 )+248)
        instance_destroy();
}

//Cap horizontal speed
if ((hspeed > 1) && (hspeed < 2))
    hspeed = 1;
else if ((hspeed > -2) && (hspeed < -1))
    hspeed = -1;

