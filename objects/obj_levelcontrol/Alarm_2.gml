/// @description Decrement time variable

//If the player object exists
if (instance_exists(obj_playerparent)) {

    //If there's time left
    if (global.time > 0) {
    
        //Decrement
        global.time--;
        
        //Decrement again
        alarm[2] = 40;
        
        //Play the hurry up sound at 100 seconds
        if (global.time == 101)
            alarm[3] = 40;
            
        //Kill the player at 0 seconds
        else if (global.time == 1)
            alarm[4] = 40;
    }
}

//Otherwise, hold.
else {

    alarm[2] = 50;
    exit;
}

