/// @description Set new direction

switch (ready) {

    //Up
    case (0): {
    
        //Set the vertical speed
        vspeed = -1;
        
        //Set the movement type
        ready = 2;
        
        //Exit;
        exit;
    } break;
    
    //Left
    case (1): {
    
        //Set the horizontal speed
        hspeed = -1;
        
        //Set the movement type
        ready = 3;
        
        //Exit;
        exit;
    } break;
    
    //Down
    case (2): {
    
        //Set the horizontal speed
        vspeed = 1;
        
        //Set the movement type
        ready = 0;
        
        //Exit;
        exit;
    } break;
    
    //Right
    case (3): {
    
        //Set the horizontal speed
        hspeed = 1;
        
        //Set the movement type
        ready = 1;
        
        //Exit;
        exit;
    } break;
}

