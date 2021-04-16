/// @description Go where the panel takes you

//Play 'Enter Stage' sound
audio_play_sound(snd_enterstage, 0, false);

//Do not remember checkpoint
global.checkpoint = noone;

//Do not display "Mario Start!"
global.mariostart = 1;

//Prevent level exit
global.levelbeat = 0;

//Make the player go to the destination room
with (obj_mapplayer) {

    if (other.myroom == 0)
        myroom = rm_minigame_sma4_a; //SMA4 Digging Minigame
}

