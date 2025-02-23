/// @description Block logic

//If none of the blocks was hit
if (ready == 0) {

    //If the player bumps the leftmost block
    if (collision_rectangle(x-15,y+19,x,y+19,obj_playerparent,0,0)) {
    
        //Set up offset for the leftmost block
        loffset = -0.2;
        
        //Mark as hit
        ready = 1;        
    }
    
    //Otherwise, if the player bumps the rightmost block
    else if (collision_rectangle(x,y+19,x+15,y+19,obj_playerparent,0,0)) {
    
        //Set up offset for the rightmost block
        roffset = -0.2;
        
        //Mark as hit
        ready = 1;
    }
}

//Otherwise, if any of the blocks got hit
else if (ready == 1) {

    //Update offset for the leftmost block
    if (loffset < 0) {
    
        loffset -= 0.5;
        if (loffset < -4)
            ready = 2;
    }
    
    //Otherwise, update offset for the rightmost block
    else if (roffset < 0) {
    
        roffset -= 0.5;
        if (roffset < -4)
            ready = 2;
    }
}

//Otherwise, if any of the blocks is moving down
else if (ready == 2) {

    //Reset position of the leftmost block
    if (loffset > 0.5) {
    
        //Reset offset
        loffset = 0;
        
        //Make the platform not able to be hit
        ready = 3;        
    }
    
    //Otherwise, reset position of the rightmost block
    else if (roffset > 0.5) {
    
        //Reset offset
        roffset = 0;
        
        //Make the platform not able to be hit
        ready = 3;
    }
    
    //Change offset for the leftmost block
    if (loffset < 0) then loffset += 0.5;
    
    //Change offset for the rightmost block
    if (roffset < 0) then roffset += 0.5;
}

//Time it
mytimer += 0.5;
angle = cos(mytimer*0.05)*(pi/2);

//Set the position of the block
x = myx-sin(angle)*distance;
y = myy+cos(angle)*distance;

//Manage player events
event_user(0);

