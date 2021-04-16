/// @description If the animation has ended and no more loops are needed.

if (ready) {

    //Does the animation still loop.
    if (loop > 0) {
    
        //Decrement loop
        loop--;
    }
    else {
    
        //Delete the screenshot if it exists        
        background_delete(back);
        
        //Resume movement on all backgrounds
        for (var i=0; i<8; i++) {
        
            __background_set( e__BG.HSpeed, i, temp_h[i] );
            __background_set( e__BG.VSpeed, i, temp_v[i] );
        }
                     
        //Activate all instances.
        instance_activate_all();
        
        //Resume particles
        with (obj_rainmaker) event_user(0);
            
        //Activate all timelines
        timeline_running = 1;
        
        //With the player
        with (obj_playerparent) {
        
            //Enable gravity
            enable_gravity = true;
            
            //Make visible
            visible = true;
            
            //Reset alarm
            if (alarm[0] > -1) then alarm[0] = 90;
            
            //Set alpha back to 1, but check first if the player is not doing a special action.
            if (instance_exists(obj_puller))
            || (instance_exists(obj_spinner))
            || (instance_exists(obj_dropdown))
            || (instance_exists(obj_wallrunner))
                image_alpha = 0;
            else
                image_alpha = 1;
        }
        
        //Destroy
        instance_destroy();
    }
}

