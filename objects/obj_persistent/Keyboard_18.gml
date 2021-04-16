/// @description Handle all of the hot keys

//Quit the game when ALT+F4 are pressed.
if (keyboard_check_pressed(vk_f4))
    game_end();
    
//Restart the game when ALT+R are pressed.
else if (keyboard_check_pressed(ord("R"))) {
    
    //Reset all global variables
    init_globals();    
    
    //Restart?
    restart = 1;
    
    //Stop all audio
    audio_stop_all();
    
    //Go to disclaimer screen
    if (instance_number(obj_fadein) == 0)    
        with (instance_create(0,0,obj_fadein)) target = rm_disclaimer;
}

//Change window size
else if (keyboard_check_pressed(ord("W"))) {

    //If the window is not set to fullscreen
    if (fullscreen == false) {

        //Change filter
        filter++;
        
        //Check if the filter is the second one
        if (filter == 3) {
        
            //Set default filter
            filter = 0;
            
            //Set fullscreen variable
            fullscreen = true;
            
            //Set fullscreen mode
            window_set_fullscreen(true);                                                             
        }
    }
    
    //Otherwise, set it to windowed mode
    else {
    
        //Change fullscreen variable
        fullscreen = false;
    
        //Set windowed mode
        window_set_fullscreen(false);             
    }
    
    //Apply settings
    event_user(0);       
}

