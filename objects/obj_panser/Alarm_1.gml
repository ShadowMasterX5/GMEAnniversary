/// @description Spit a fireball

//Play 'Podoboo' sound
audio_play_sound(snd_podoboo, 0, false);

//Set frame
image_index = 2;

//Spit a fireball
alarm[2] = 24;

//Spit a fireball towards the player
with (instance_create(x-8,y,obj_panser_fire))
    hspeed = 1*sign(other.xscale);

