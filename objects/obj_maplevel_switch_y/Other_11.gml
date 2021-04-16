/// @description Go where the panel takes you

//Play 'Enter Stage' sound
audio_play_sound(snd_enterstage, 0, false);

//Do not remember checkpoint
global.checkpoint = noone;

//Make the player go to the destination room
with (obj_mapplayer) {

    myroom = other.myroom;
}

