/// @description Activate P-Switch events

//If the switch is not turned on yet.
if (!switchon) {

    //Turn the switch on.
    switchon = true;
    
    //Change items
    pswitch_activate();
    
    //Start the switch song if it's not playing.
    alarm[1] = 1;
    if (!audio_is_playing(bgm_pswitch)) {
    
        audio_play_sound(bgm_pswitch, 1, true);
    }
    
    //Prevent the starman theme from overlapping
    audio_stop_sound(bgm_starman);
}

