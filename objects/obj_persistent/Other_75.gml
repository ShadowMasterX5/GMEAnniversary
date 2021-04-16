/// @description Check if the gamepad is connected / disconnected

//Gamepad type
gamepad_input = 0;

//Check first if the variable exists
if (variable_global_exists("gamepad")) {
    
    //Update gamepad state
    global.gamepad = gamepad_is_connected(gamepad_input);
    
    //Show a temporary message if the gamepad has been connected
    if (gamepad_check == 0) {
    
        //If a gamepad is connected
        if (global.gamepad == 1) {
        
            //Show message
            message = "Gamepad Connected";
            
            //Hide it
            alarm[3] = 30;
            
            //Let the game know it
            gamepad_check = 1;
        }
    }
    
    //Otherwise
    else {
    
        //If a gamepad is connected
        if (global.gamepad == 0) {
        
            //Show message
            message = "Gamepad Disconnected";
            
            //Hide it
            alarm[3] = 30;
            
            //Let the game know it
            gamepad_check = 0;
        }    
    }
}

