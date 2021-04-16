/// @description Create a lightning strike

//Play 'Lightning' effect
audio_stop_sound(snd_lightning);
audio_play_sound(snd_lightning, 0, false);

//Repeat
alarm[0] = 300+random(round(300));

//Create lightning sheet
instance_create(0,0,obj_lightningsheet);

