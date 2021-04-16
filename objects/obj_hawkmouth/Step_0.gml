/// @description Hawkmouth logic

//Set the scale of the mask
if (instance_exists(mytop))
    mytop.image_xscale = xscale;

//If the mouth is opening
if (ready == 2) {

    //Open it
    myy += 0.3;
    
    //If the mouth is opened enough, wait for the player
    if (myy > 12) {
    
        //Keep it open
        myy = 12;
        
        //Wait until the player enters
        ready = 3;
    }
}

//Otherwise, if the mouth is closing
else if (ready == 4) {

    //Close it
    myy -= 0.3;
    
    //If the mouth is closed enough, clear the level
    if (myy < 0) {
    
        //Keep it closed
        myy = 0;
        
        //Clear the level
        ready = 5;
    }
}

