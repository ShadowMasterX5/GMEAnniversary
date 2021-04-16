/// @description Make the screen shake when certain sounds are playing.

if (audio_is_playing(snd_thwomp)) {
    
    //Repeat
    alarm[11] = 1;    
    
    //Shake the screen...    
    port_x = random_range(4,-4);
    port_y = random_range(4,-4);
}
else {

    port_x = 0;
    port_y = 0;
}

