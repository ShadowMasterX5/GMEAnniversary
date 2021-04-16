/// @description Destroy

//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false);

//Create new trampoline
with (instance_create(xstart,ystart,obj_key_timed)) time = other.time;

//Create smoke
instance_create(x-8,y,obj_smoke);

//Destroy
instance_destroy();

