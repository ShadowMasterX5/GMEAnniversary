/// @description Play a sound

//Play 'Engine' sound
if (!outside_view())
    audio_play_sound(snd_engine, 0, false);

//Repeat
alarm[1] = 7;

