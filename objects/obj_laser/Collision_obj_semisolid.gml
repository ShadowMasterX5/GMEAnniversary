/// @description Destroy

//Create smoke
instance_create(x-5, y-4, obj_smoke);

//Play sound
if (!audio_is_playing(snd_bump)) {

    audio_play_sound(snd_bump, 0, false);
}

//Destroy
instance_destroy();

