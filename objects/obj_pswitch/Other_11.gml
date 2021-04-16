/// @description Press the switch and destroy

//Check if this switch is not pressed
if (image_index == 0) {

    //Play 'Switch' song
    audio_play_sound(snd_switch, 0, false);
    
    //Change it
    image_index = 1;
    
    //Destroy it
    alarm[0] = 60;
    
    //Activate switch events
    with (obj_levelcontrol) {
    
        //Reset warning
        pwarning = 0;
        
        //Restart timer
        alarm[5] = 800;
        
        //Activate p-switch effect
        event_user(5);
    }
}

