/// @description Crusher logic

//Slam into the specified y value
if (ready == 1) && (y > ystart-4) {

    //Play 'Thwomp' sound
    audio_play_sound(snd_thwomp, 0, false);
    
    //Stop vertical movement
    vspeed = 0;
    y = ystart;
    
    //End slam
    ready = 2;
    
    //Move up after a while
    alarm[2] = 60;
}

//Stop after returning to the top, and restart sequence
else if (ready == 2) && (y < ystart-191) {

    //Stop vertical movement
    vspeed = 0;
    y = ystart-192;
    
    //Restart slam
    ready = 0;
    
    //Go down
    alarm[0] = 100;
}

