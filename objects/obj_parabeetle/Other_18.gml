/// @description Handle flight

//If the player is above this parabeetle
passenger = collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top-5,obj_playerparent,0,0);
if (passenger) 
&& (passenger.state < 2) {

    //Make the parabeetle go down
    if (ready == 0) {
    
        //Move down
        ready = 1;
        
        //Set the vertical speed
        vspeed = 1.5;
    }
}

//Otherwise, stop vertical speed.
else {

    //Prepare to move down again
    ready = 0;
    
    //Stop vertical speed
    vspeed = 0;
}

//If the parabeetle is carrying the player.
if (ready == 1)
    vspeed += -0.1;

//Otherwise, if it's not carryying him.
else {

    //Manage vertical speed.
    if (vspeed < 0)
        vspeed += 0.25;
    else
        vspeed = 0;
}

//Cap vertical speed
if (vspeed < -1) 
    vspeed = -1;
else if (vspeed > 1.5) 
    vspeed = 1.5;

