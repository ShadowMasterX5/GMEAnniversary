/// @description Go where the panel takes you

//Play 'Enter Stage' sound
audio_play_sound(snd_enterpipe, 0, false);

//Clear
global.clear = 1;

//Set up pipe info
global.pipetype = 2;
global.pipex = pipex;
global.pipey = pipey;

//Do not remember checkpoint
global.checkpoint = noone;

//Set the room
with (obj_mapplayer)
    myroom = other.myroom;

