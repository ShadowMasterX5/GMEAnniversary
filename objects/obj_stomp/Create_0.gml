/// @description Stomp mask

//Play 'Stomp2' sound
audio_play_sound(snd_stomp2, 0, false);

//Default kill method
killtype = 0;

//Combo
hitcombo = 0;

//Create smoke effect
with (instance_create(x-8,y,obj_smoke)) sprite_index = spr_supersmash;

//Destroy
alarm[0] = 2;

