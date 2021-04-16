/// @description Boss Door Animation 2

//Play 'Castle Break' sound
audio_play_sound(snd_castlebreak, 0, false);

//Set frame
image_index = 1;

//Create smoke
instance_create(x,y+16,obj_smoke);

//Next frame
alarm[1] = 20;

