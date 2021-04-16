/// @description Handles keyboard presses.

//Check if the 'Up Key' is pressed.
if (keyboard_check_pressed(global.upkey)) {

    //If the choice is already the first, exit
    if (choice == 0)
    exit;
    
    //Otherwise, move up a choice
    choice -= 1;
    
    //Play a sound
    audio_play_sound(snd_move,false,0);
}

//Check if the 'Down Key' is pressed.
else if (keyboard_check_pressed(global.downkey)) {

    //If the choice is already the last, exit
    if (choice == 2)
    exit;
    
    //Otherwise, move down a choice
    choice += 1;
    
    //Play a sound
    audio_play_sound(snd_move,false,0);
}

//Check if the 'Shift Key' is pressed.
else if (keyboard_check_pressed(global.shiftkey)) {

    //Has the action been completed?
    if (ready == 1) {
    
        //Switch between the choices
        switch (choice) {
            
            //If you chose the first choice.
            case (0): {
            
                if (ready == 1) {
                
                    ready2 = 2;
                    alarm[0] = 1;
                }
            } break;
            
            //If you chose the second choice.
            case (1): {
            
                if (global.levelbeat == 1) {
                
                    //Activate all deactivated instances
                    instance_activate_all();
                    
                    //Perform dead event
                    global.died = true;
                    
                    //Stop Music
                    audio_stop_all();
                    
                    //Play a sound
                    audio_play_sound(snd_correct,false,0);
                    
                    //Return to the map
                    endlevel();
                    
                    //Exit
                    exit;
                }
                else {
                
                    audio_play_sound(snd_wrong,false,0)
                    exit;
                }
            } break;
            
            //If you chose the last choice.
            case (2): {
            
                audio_play_sound(snd_correct,false,0)
                game_end();
                exit;
                
            } break;
        }
    }
}

//Check if the 'Enter Key' is pressed without alt.
else if (keyboard_check_pressed(global.enterkey)) && (!keyboard_check(vk_alt)) {

    //Makes the menu ready to be closed.
    if (ready == 1)
        ready2 = 2;
    
    //Shrinks...
    alarm[0] = 1;
}

