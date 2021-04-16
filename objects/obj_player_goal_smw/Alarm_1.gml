/// @description Start walking

//If the timer hits zero
if (global.time == 0) {

    //Play 'Goal End' sound
    audio_play_sound(snd_goalend, 0, false);
    
    //Set states
    ready2 = 0;
    ready3 = 1;
}

//Otherwise
else
    alarm[1] = 60;

