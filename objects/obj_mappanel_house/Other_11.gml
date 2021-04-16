/// @description Go where the panel takes you
    
//Play 'Enter Stage' sound
audio_play_sound(snd_enterstage, 0, false);

//Set up pipe info
global.prize[0] = powerup[0];
global.prize[1] = powerup[1];
global.prize[2] = powerup[2];

//Do not remember checkpoint
global.checkpoint = noone;    

//Do not display "Mario Start!"
global.mariostart = 1;

//Prevent level exit
global.levelbeat = 0;
    
//Make the player go to the destination room
with (obj_mapplayer) {

    myroom = rm_bonus;
}

