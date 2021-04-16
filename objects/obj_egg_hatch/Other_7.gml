/// @description If the animation has ended and no more loops are needed.

if (ready) {
    
    //Delete the screenshot if it exists.
    if (background_exists(back)) {
    
        background_delete(back);
    }
    
    //Activate all instances.
    instance_activate_all();
    
    //Resume particles
    with (obj_rainmaker) event_user(0);
        
    //Activate all timelines
    timeline_running = 1;
    
    //Create a idle Yoshi
    with (instance_create(x,y,obj_yoshi_abandon)) {
    
        colour = other.colour;
        vspeed = -1.5;
    }
    
    //Destroy
    instance_destroy();
}

