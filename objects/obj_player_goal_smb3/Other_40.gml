/// @description Initialize time bonus

//If the player did not exit the view
if (ready == 0)
&& (x > room_width+32)
&& (audio_is_playing(mygoal.stream) == false) {

    //The player exited the view
    ready = 1;
    
    //Stop him
    hspeed = 0;
    
    //Take points out off time and add it to score
    event_user(15);
}

