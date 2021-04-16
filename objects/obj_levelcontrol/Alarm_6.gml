/// @description Deactivate Gray P-Switch events

//If the switch is on already.
if (gswitchon) {

    //Turn off the P-Switch.
    gswitchon = false;
    
    //Reset silver coin
    global.silvercoins = 0;
    
    //Stop the switch song
    audio_stop_sound(bgm_pswitch);
    
    //Allow warning
    gwarning = 0;
    
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

