/// @description Carrot lift logic

//If the lift is moving up and it's over 64px above the start.
if ((ready == 1) && (y < ystart-64)) {

    //Make it descend
    ready = 2;
    
    //Set the vertical speed
    vspeed = 0.5;
}

//Otherwise, if the lift is descending and below the start position, keep it in place
else if ((ready == 2) && (y > ystart)) {

    //Make it able to ascend after a while
    alarm[0] = 60;
    
    //Do not move
    ready = 3;
        
    //Stop vertical movement
    vspeed = 0;
    y = ystart;
}

