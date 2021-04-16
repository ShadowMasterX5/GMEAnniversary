/// @description Play a sound

//Play 'Engine' sound when moving.
if (ready) {

    if (!outside_view())
        audio_play_sound(snd_engine, 0, false);
}

//Repeat
alarm[1] = 15;

