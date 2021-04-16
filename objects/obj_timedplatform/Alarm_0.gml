/// @description Decrement timer and make the object fall when timer hits 0

if (time == 1) {

    //End timer
    time = 0;
    
    //Start falling
    gravity = 0.15;
}
else {

    //Play 'Move' sound
    audio_play_sound(snd_move, 0, false);
    
    //Decrement timer
    time -= 1;
        
    //Repeat the process 
    alarm[0] = 60;
}

