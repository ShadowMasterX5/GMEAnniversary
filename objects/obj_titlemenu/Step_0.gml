/// @description Manage keyboard presses

//If the menu is not on key change mode
if (mode == 2) {

    //If the player presses the 'Up' key
    if (keyboard_check_pressed(global.upkey)) {
    
        //Play 'Move' sound
        audio_play_sound(snd_move, 0, false);
    
        //Cycle between options
        if (current == 1)
            current = menu[page,0];
        else
            current--;
    }
    
    //Otherwise, if the player presses the 'Down' key
    else if (keyboard_check_pressed(global.downkey)) {
    
        //Play 'Move' sound
        audio_play_sound(snd_move, 0, false);
    
        //Cycle between options        
        if (current == menu[page,0])
            current = 1;
        else
            current++;
    }
    
    //Otherwise, if the player presses the 'Shift' key
    else if (keyboard_check_pressed(global.shiftkey)) {
    
        //Page 0: Main
        if (page == 0) {
        
            //Option 1: Start Game
            if (current == 1) {
                
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 1
                page = 1;
                
                //Reset option to 1
                current = 1;
            }
            
            //Option 2: Options
            else if (current == 2) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 2
                page = 2;
                
                //Reset option to 1
                current = 1;
            }
            
            //Option 3: Exit
            else if (current == 3) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Exit the game
                game_end();
            }
        }
        
        //Page 1: File selection
        else if (page == 1) {
        
            //Options 1 to 3: File selection
            if (current != 4) {
        
                //Stop stream if it's playing
                audio_stop_sound(bgm_title);
                
                //Check what file is selected
                switch (current) {
                
                    //File A
                    case (1): global.file = "GMEASaveA.sav"; break;
                    
                    //File B
                    case (2): global.file = "GMEASaveB.sav"; break;
                    
                    //File C
                    case (3): global.file = "GMEASaveC.sav"; break;
                }
                
                //If the file exists
                if (file_exists(global.file)) {
                
                    load(global.file);
                    if (instance_number(obj_curtainout) == 0) {
                    
                        audio_play_sound(snd_enterstage, 0, false);     
                        with (instance_create(__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh/2,obj_curtainout))                        
                            target = rm_map;                        
                    }
                }
                
                //Otherwise, go to the intro screen
                else {

                    if (instance_number(obj_curtainout) == 0) {
                    
                        audio_play_sound(snd_enterstage, 0, false);     
                        with (instance_create(__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh/2,obj_curtainout))
                            target = rm_intro;
                    }                    
                }
            }
            
            //Choice 3: Back
            else if (current == 4) {
                                
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
            
                //Go to page 0
                page = 0;
                
                //Set the choice
                current = 1;       
            }            
        }
        
        //Page 2: Options
        else if (page == 2) {
        
            //Option 1: Keyboard configuration
            if (current == 1) {
            
                //Check if a gamepad is connected
                if (global.gamepad == false) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Go to page 3
                    page = 3;
                    
                    //Set the choice
                    current = 1;
                }
                
                //Otherwise, play 'Wrong' sound
                else
                    audio_play_sound(snd_wrong, 0, false);
            }
            
            //Option 2: Reserve Auto-Drop
            else if (current == 2) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Enable Reserve item auto-drop
                global.reservedrop = !global.reservedrop;
            }
            
            //Option 3: Window size
            else if (current == 3) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
            
                //Switch filter
                with (obj_persistent) {
                
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
            }
            
            //Option 4: V-Sync
            else if (current == 4) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Enable V-Sync
                with (obj_persistent) {
                
                    //Toggle vertical syncronization
                    vsync = !vsync;
                    
                    //Apply settings
                    event_user(0);
                }
            }
            
            //Option 5: FPS
            else if (current == 5) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Enable FPS on screen
                with (obj_persistent) {
                
                    //Toggle FPS
                    showfps = !showfps;
                }
            }
            
            //Option 6: Credits
            else if (current == 6) {
            
                //Stop stream if it's playing
                audio_stop_sound(bgm_title);
            
                //Go to credits room
                if (instance_number(obj_curtainout) == 0) {
                
                    audio_play_sound(snd_enterstage, 0, false);     
                    with (instance_create(__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh/2,obj_curtainout))
                        target = rm_credits;
                }                              
            }
            
            //Option 7: Back
            else if (current == 7) {
                            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
                
                //Go to page 3
                page = 0;
                
                //Set the choice
                current = 1;                    
            }
        }
        
        //Page 3: Keys 1/2
        else if (page == 3) {
        
            //Exit if the gamepad is connected
            if (global.gamepad == true) {
                
                //Go to page 2
                page = 2;
                
                //Set the choice
                current = 1;            
            }
            
            //Otherwise
            else {
        
                //Options 1 to 4
                if (current < 5) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Set 'Key' mode
                    mode = 3;
                    
                    //Switch current
                    switch (current) {
                    
                        case (1): set_keys(0, "Press a key...", vk_control); break;
                        case (2): set_keys(1, "Press a key...", vk_shift); break;
                        case (3): set_keys(2, "Press a key...", vk_space); break;
                        case (4): set_keys(3, "Press a key...", vk_enter); break;
                    }                    
                    
                    //Set 'Active' mode
                    alarm[0] = 3;
                }
            
                //Option 5: Reset keys
                else if (current == 5) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Reset all keys
                    alarm[1] = 1;
                }
                
                //Option 6: Page 2 / 2
                else if (current == 6) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Go to page 4
                    page = 4;
                }
                
                //Option 7: Back
                else if (current == 7) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Go to page 2
                    page = 2;
                    
                    //Set the choice
                    current = 1;
                }
            }
        }
        
        //Page 2: Keys 2/2
        else if (page == 4) {
                
            //Exit if the gamepad is connected
            if (global.gamepad == true) {
                
                //Go to page 2
                page = 2;
                
                //Set the choice
                current = 1;            
            }
            
            //Otherwise
            else {
        
                //Options 1 to 4
                if (current < 5) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Set 'Key' mode
                    mode = 3;
                    
                    //Switch current
                    switch (current) {
                    
                        case (1): set_keys(4, "Press a key...", vk_up); break;
                        case (2): set_keys(5, "Press a key...", vk_down); break;
                        case (3): set_keys(6, "Press a key...", vk_left); break;
                        case (4): set_keys(7, "Press a key...", vk_right); break;
                    }                    
                    
                    //Set 'Active' mode
                    alarm[0] = 3;
                }
            
                //Option 5: Reset keys
                else if (current == 5) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Reset all keys
                    alarm[1] = 1;
                }
                
                //Option 6: Page 2 / 2
                else if (current == 6) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Go to page 4
                    page = 3;
                }
                                
                //Option 7: Back
                else if (current == 7) {
                
                    //Play 'Correct' sound
                    audio_play_sound(snd_correct, 0, false);
                    
                    //Go to page 2
                    page = 2;
                    
                    //Set the choice
                    current = 1;
                }
            }
        }
    }
}

//Update Reserve Auto-Drop text
if (global.reservedrop)
    menu[2,2] = "Reserve Auto-Drop: On";
else
    menu[2,2] = "Reserve Auto-Drop: Off";

//Update V-Sync text
if (obj_persistent.vsync)
    menu[2,4] = "V-Sync: On";
else
    menu[2,4] = "V-Sync: Off";
    
//Update FPS text
if (obj_persistent.showfps)
    menu[2,5] = "FPS: On";
else
    menu[2,5] = "FPS: Off";
    
//Update Key Text
menu[3,1] = "Run, Shoot: " + string(key_to_string(global.controlkey));
menu[3,2] = "Jump, Spin: " + string(key_to_string(global.shiftkey));
menu[3,3] = "Reserve   : " + string(key_to_string(global.spacekey));
menu[3,4] = "Pause     : " + string(key_to_string(global.enterkey));
menu[4,1] = "Up        : " + string(key_to_string(global.upkey));
menu[4,2] = "Down      : " + string(key_to_string(global.downkey));
menu[4,3] = "Left      : " + string(key_to_string(global.leftkey));
menu[4,4] = "Right     : " + string(key_to_string(global.rightkey));



