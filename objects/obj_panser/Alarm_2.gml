/// @description Spit a fireball

//Play 'Podoboo' sound
audio_play_sound(snd_podoboo, 0, false);

//Set frame
image_index = 0;

//Spit a fireball
alarm[1] = 96;

//Spit a fireball towards the player
with (instance_create(x-8,y,obj_panser_fire))
    hspeed = 1*sign(other.xscale);

