/// @description Handles keyboard presses.

//Check if the 'Up Key' is pressed.
if (keyboard_check_pressed(global.upkey)) {

    //If the choice is already the first, exit
    if ((choice == 0) || (ready <> 1))
    exit;
    
    //Otherwise, move up a choice
    choice -= 1;
    
    //Play a sound
    audio_play_sound(snd_move,false,0);
}

//Check if the 'Down Key' is pressed.
else if (keyboard_check_pressed(global.downkey)) {

    //If the choice is already the last, exit
    if ((choice == 2) || (ready <> 1))
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
    
        //If you chose the first choice
        if (choice == 0) {
        
            //Play a sound
            audio_play_sound(snd_save,false,0);
            
            //Begin menu closement
            alarm[0] = 2;
            
            //Allowed to quit
            quitable = 1
            
            //Saves the game...
            event_user(0);
        }
        
        //If you chose the second choice
        else if (choice == 1) {
        
            //Play a sound
            audio_play_sound(snd_save,false,0);
            
            //Begin menu closement
            alarm[0] = 2;
            
            //Saves and closes the game...
            event_user(1);
        }
        
        //If you chose the last choice
        else if (choice == 2) {
        
            //Play a sound
            audio_play_sound(snd_correct,false,0);
            
            //Begin menu closement
            alarm[0] = 2;
            
            //Alowed to quit
            quitable = 1
        }
    }
}

