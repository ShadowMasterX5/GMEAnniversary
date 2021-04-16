/// @description Leaf logic

//If the leaf is sprouting out from the block.
if ((action = "sprout") && (y < ystart-36)) {

    //Set the new action.
    action = "nright";
    alarm[0] = 5;
    
    //Set the depth
    depth = -2;
        
    //Set the vertical speed.
    vspeed = 0;
    gravity = 0;
}

//Otherwise, if the leaf is floating to the right.
else if (action = "right") {

    //Set the frame.
    image_index = 1;
    
    //Change direction
    if (x > xstart+16) {
    
        hspeed -= 0.0625;
        vspeed -= 0.06;
    }
    else {
    
        hspeed += 0.06;
        vspeed -= 0.08;
    }
    
    //Set the new action
    if (x > xstart+32) {
    
        //Set the new action.
        action = "nleft";
        alarm[0] = 5;
        
        //Set the horizontal speed.
        hspeed = 0;
    }
}

//Otherwise, if the leaf is floating to the left.
else if (action = "left") {

    //Set the frame.
    image_index = 2;
    
    //Change direction
    if (x < xstart+16) {
    
        hspeed += 0.0625;
        vspeed -= 0.06;
    }
    else {
    
        hspeed -= 0.06;
        vspeed -= 0.08;
    }
    
    //Set the new action
    if (x < xstart) {
    
        //Set the new action.
        action = "nright";
        alarm[0] = 5;
        
        //Set the horizontal speed.
        hspeed = 0;
    }
}

