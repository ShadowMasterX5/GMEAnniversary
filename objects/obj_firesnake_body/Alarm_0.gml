/// @description Jump towards the player

//Set the horizontal speed
hspeed = parent.prevhspeed;
xscale = 1*sign(parent.prevhspeed)

//If the player is above.
if (type == 0) {

    //Set the vertical speed.
    vspeed = -3.2;
    
    //Jump
    jumping = 1;
}

//Otherwise, if it's below or in the same y position.
else if (type != 0) {

    //Set the vertical speed.
    vspeed = -1.75;
    
    //Jump
    jumping = 1;
    
    //Otherwise, if it's below.
    if (type == 2) {
    
        //Check for nearby solid areas and allow jumping.
        mysolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_semisolid,0,1);
        if (mysolid) 
        && (mysolid.image_yscale <= 1)
            ready = 1;
    }
}

