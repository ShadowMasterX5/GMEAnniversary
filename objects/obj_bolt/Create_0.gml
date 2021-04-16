/// @description A lightning bolt

//Play 'Fireball' sound
audio_play_sound(snd_fireball, 0, false);

//Animate
image_speed = 0.2;

//Destroy
alarm[0] = 180;

//Leave a trail
alarm[2] = 1;

//Whether the bolt bounced on a slope
ready = 0;

