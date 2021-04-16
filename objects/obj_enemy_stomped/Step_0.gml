/// @description Stomped enemy logic

//Cap vertical speed
if (vspeed > 0) {

    //If not in water
    if (!place_meeting(x,y,obj_swim)) {

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

