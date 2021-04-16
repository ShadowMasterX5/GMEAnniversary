/// @description Restart flying ability

//Allow Mario to fly again.
flying = false;

//Reset P-Meter
pmeter = 0;

//Make Mario walk
run = 0;

//Stop 'P-Meter' sound
if (audio_is_playing(snd_pmeter))
    audio_stop_sound(snd_pmeter);

