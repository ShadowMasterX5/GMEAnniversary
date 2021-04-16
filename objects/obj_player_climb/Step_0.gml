/// @description Player climb logic

//Update sprite
scr_mario_climb();

//If the player is about to climb up
if (ready == false) {

    //If the beanstalk does not exist
    if (!instance_exists(myvine)) {
    
        //Make the player climb up
        ready = true;
    
        //Move up
        vspeed = -1;
        
        //Create a new player object
        alarm[1] = 96;
    }
}

//Otherwise, if the player is climbing already
else {

    //Increment climb
    climb++;
    
    //If climb hits 7, reset and play a sound
    if (climb > 7) {
    
        //Reset climb
        climb = 0;
        
        //Play a sound
        audio_play_sound(snd_climb, 0, false);        
    }
}

