/// @description Go where the panel takes you

//Play 'Enter Stage' sound
audio_play_sound(snd_enterstage, 0, false);

//If no checkpoint was reached, set the default room
if (checkpoint == noone) {

    //Set the target room
    with (obj_mapplayer) 
        myroom = other.myroom;
}

//Otherwise, if a checkpoint was reached go to the checkpoint room
else {

    //Remember it
    global.checkpoint = checkpoint;
    
    //Set the target room
    with (obj_mapplayer)
        myroom = global.checkpointroom;
}

