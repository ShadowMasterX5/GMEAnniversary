/// @description Remember the star for the next room

//If the game is not being restarted
if (obj_persistent.restart == false) {

    //If the starman is still running.
    if (alarm[0] > 5)
        global.starman = alarm[0];
        
    //Otherwise
    else
        audio_stop_sound(bgm_starman);
}
else 
    audio_stop_sound(bgm_starman);  

