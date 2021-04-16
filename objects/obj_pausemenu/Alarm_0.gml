/// @description Handle the scaling.

if (ready2 == 1) {

    if (image_xscale < 1) {
    
        //Scale menu up
        image_xscale += 0.1;
        image_yscale += 0.1;
        
        //Backgrond alpha
        image_alpha += 0.05;
        
        //Radius
        var_greyscale_fade += 0.1;
        
        //Repeats the process
        alarm[0] = 1;
    }
    
    else {
    
        image_xscale = 1;
        image_yscale = 1;
        ready = 1;
    }
}

else if (ready2 == 2) {

    if (image_xscale > 0) {
    
        //Scale menu down
        image_xscale -= 0.1;
        image_yscale -= 0.1;
        
        //Backgrond alpha
        image_alpha -= 0.05;
        
        //Radies
        var_greyscale_fade -= 0.1;
        
        //Repeats the process
        alarm[0] = 1;
    }
    
    else {
    
        //Play a sound
        audio_play_sound(snd_pause,false,0)
        
        //Delete the screenshot
        background_delete(back);
            
        //Activate everything
        instance_activate_all();
        
        //Resume movement on all backgrounds
        for (var i=0; i<8; i++) {
        
            __background_set( e__BG.HSpeed, i, temp_h[i] );
            __background_set( e__BG.VSpeed, i, temp_v[i] );
        }
        
        //Resume particles
        with (obj_rainmaker) event_user(0);
        
        //Activate all timelines
        timeline_running = 1;
        
        //Reset the state of the shift key
        keyboard_clear(global.shiftkey);
        
        //Destroy the message box
        instance_destroy();
    }
}

