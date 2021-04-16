/// @description Go where the panel takes you

//Play 'Enter Stage' sound
audio_play_sound(snd_enterpipe, 0, false);

//Set up pipe info
global.pipetype = pipetype;
global.pipex = pipex;
global.pipey = pipey;

//Do not display "Mario Start!"
global.mariostart = 1;

//Do not remember checkpoint
global.checkpoint = noone;

//Set the room
with (obj_mapplayer)
    myroom = other.myroom;


