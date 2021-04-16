/// @description Deactivate P-Switch events.

//If the switch is on already.
if (switchon) {

    //Turn off the P-Switch.
    switchon = false;
    
    //Change items.
    pswitch_deactivate();
    
    //Stop the switch song
    audio_stop_sound(bgm_pswitch);
    
    //Allow warning
    pwarning = 0;
    
    //Restart the invincibility music if it was stopped due to overlap.
    if (instance_exists(obj_invincibility)) {
    
        if (obj_invincibility.alarm[0] > -1)    
            obj_invincibility.alarm[2] = 2;
        else
            alarm[0] = 2;
    }
    
    //Otherwise, restart
    else
        alarm[0] = 2;
}

