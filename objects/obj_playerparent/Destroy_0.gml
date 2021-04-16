/// @description Stop sounds

//Stop 'Spin' sound
audio_stop_sound(snd_spin);

//Stop 'Skid' sound
audio_stop_sound(snd_skid);

//Stop 'Climb' sound
audio_stop_sound(snd_climb);

//Stop 'P-Meter' sound
audio_stop_sound(snd_pmeter);

//Destroy puller object
if (instance_exists(obj_puller))
    with (obj_puller) instance_destroy();

