/// @description Reset values

//Stop the following sounds from playing
audio_stop_sound(snd_climb);
audio_stop_sound(snd_pmeter);
audio_stop_sound(snd_skid);
audio_stop_sound(snd_spin);
audio_stop_sound(snd_switchtimer);
audio_stop_sound(snd_switchtimer_end);
audio_stop_sound(snd_timer);
audio_stop_sound(snd_timer_end);

//If the game is not restarting
if (obj_persistent.restart == false) {

    //Remember P-Switch time limit if enabled
    if (switchon)
        global.pswitch = alarm[5];
    
    //Remember G-Switch time limit if enabled
    if (gswitchon) 
        global.gswitch = alarm[6];
}

//Restart level colours
if (global.skin != 0)
    global.skin = 0;

