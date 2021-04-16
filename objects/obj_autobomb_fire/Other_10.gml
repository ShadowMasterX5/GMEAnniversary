/// @description Destroy

//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false)

//Create smoke effect
instance_create(x-8,y-4,obj_smoke);

//Destroy
instance_destroy();

