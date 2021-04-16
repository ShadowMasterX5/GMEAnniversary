/// @description Set a even frame if a odd frame was set

//Play 'Switch' sound
audio_play_sound(snd_switch, 0, false);

//Deny animation alarm
alarm[10] = -1;
if (image_index % 2 == 1)
    image_index++;

