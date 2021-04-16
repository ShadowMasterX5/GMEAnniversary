/// @description Set the depth and vulnerability

switch (depth) {

    //If behind a fence, turn vulnerable
    case (11): {
    
        //Set vulnerability
        vulnerable = 0;
        
        //Set stomp grade
        stomp = 0;
        
        //Set depth
        depth = -2;
    } break;
    
    //Otherwise if it's on front of a fence, turn invulnerable
    case (-2): {
    
        //Set vulnerability
        vulnerable = 100;
        
        //Set stomp grade
        stomp = -1;
        
        //Set depth
        depth = 11;
    }
}

//Set new direction
alarm[1] = 1;

//End turning animation
alarm[2] = 2;

