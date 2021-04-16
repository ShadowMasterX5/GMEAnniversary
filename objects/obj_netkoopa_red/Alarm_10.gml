/// @description Move depending of where this net koopa was placed

//If snapped at 32, 32
if (place_snapped(32,32)) {

    //Move down
    vspeed = 1;
    
    //Set movement type
    ready = 0;
    
    //Exit
    exit;
}

//Otherwise if snapped at 32, 16
else if (place_snapped(32,16)) {

    //Move right
    hspeed = 1;
    
    //Set movement type
    ready = 1;
    
    //Exit
    exit;
}

//Otherwise if snapped at 16, 32
else if (place_snapped(16,32)) {

    //Move up
    vspeed = -1;
    
    //Set movement type
    ready = 2;
    
    //Exit
    exit;    
}

//Otherwise
else {

    //Move up
    hspeed = -1;
    
    //Set movement type
    ready = 3;
    
    //Exit
    exit;
}

