/// @description Cycle between powerups

//Continue the cycle.
if (ready == false) {

    //Repeat this process
    alarm[2] = 15;
    
    //Increment cycle
    numb++;
    
    //Play a sound if not outside the view
    if (!outside_view())
    && (array_length_1d(sprout) > 1)    
        audio_play_sound(snd_move, 0, false);
}

//Reset sequence
if (numb == array_length_1d(sprout)) 
    numb = 0;

