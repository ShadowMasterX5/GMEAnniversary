/// @description Boss Door Animation 3

//Play 'Castle Break' sound
audio_play_sound(snd_castlebreak, 0, false);

//Set frame
image_index = 2;

//Create smoke
instance_create(x,y+32,obj_smoke);

//Next frame
alarm[2] = 20;

//Stop 'Old' music
with (obj_levelcontrol) alarm[1] = 19;

