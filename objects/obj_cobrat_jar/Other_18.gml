/// @description Update offset

//If not jumping
if (jumping == 0) {
        
    //Set y position
    y += 0.25*sign(ready);
    
    //Change the offset movement
    if (y < ystart-8)
        ready = 1;
    else if (y > ystart)
        ready = -1;
}

