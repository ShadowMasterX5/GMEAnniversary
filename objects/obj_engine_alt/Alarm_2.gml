/// @description Set up the frame

//Check if the frame is the second one and make the engine start after 2 seconds.
if (image_index == 1) {

    //Destroy light
    if (light != -1) {
    
        with (light) instance_destroy();
        light = -1;
    }

    //Set the frame.
    image_index = 0;
    
    //Make it invisible
    visible = 0;
    
    //Start default engines or the same engine again.
    with (obj_engine) alarm[0] = 120;
}
else if (image_index > 1) {

    image_index--;
    alarm[2] = 4;
}

