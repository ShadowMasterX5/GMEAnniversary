/// @description Special block trigger event

//Check if there's not a solid to the left of the block and animate the block if so.
if (!collision_point(x-1,y,obj_solid,1,0))
    image_speed = 0.4;

//Otherwise, do not trigger
else {

    //Stop alarm, then exit.
    image_speed = 0;
    image_index = 0;
    
    //Allow triggering
    ready = 0;
}

//Stop
vspeed = 0;

//Stop alarm
alarm[0] = -1;

