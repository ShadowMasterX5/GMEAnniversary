/// @description Spike's ball logic

//Destroy if the parent did not threw it
if (ready == 0)
&& (!instance_exists(parent)) {

    instance_create(x-8,y,obj_smoke);
    instance_destroy();
    exit;
}

//Otherwise, do default step
else if (ready > 0) {

    //Phase througn floors if not falling down
    if (ready == 1)
        event_inherited();
    else {
        
        //Gravity
        gravity = 0.2;
        
        //Cap vertical speed
        if (vspeed > 4)
            vspeed = 4;
    }
    
    //Set angle
    if (ready == 1)
        angle += 6*sign(hspeed)*-1;
    else
        angle += 12*sign(hspeed)*-1;
}

