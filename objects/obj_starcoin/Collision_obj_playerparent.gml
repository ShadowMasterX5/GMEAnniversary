/// @description Collect the coin and register it

if (!ready) {

    //Play 'Scatter' sound
    event_user(0);
    
    //If the coin has been collected in a previous run of the level, destroy it
    if (ds_map_find_value(global.sc[type],global.level) == 3)
        instance_destroy();
    
    //otherwise, make it jump
    else {
    
        //Register it on the map
        if (ds_map_find_value(global.sc[type],global.level) == 0)
            ds_map_replace(global.sc[type],global.level,1);
    
        //Set the animation speed
        image_speed = 1;
        
        //Depth
        depth = -2;
    
        //Set the vertical and animation speed
        vspeed = -4;
        gravity = 0.2;
        image_speed = 0.8;
    }

    //Collect it
    ready = 1;
    
    //Get 4000 points
    with (instance_create(x+8,y,obj_score))
        event_user(7);
}

