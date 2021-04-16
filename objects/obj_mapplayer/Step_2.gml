/// @description Map player animation

//Stop it if it can't move
if (ready == 1) then speed = 0;

//If the player is about to enter a stage, make him do the victory pose.
if (letsgo == 1) {

    //Do not animate
    image_index = 8;
        
    //Set default facing direction
    xscale = 1;
}

//Otherwise, set default animation
else {

    //If the player is not moving
    if (speed == 0) {
    
        //Do not animate
        image_index = 0;
        
        //Set default facing direction
        xscale = 1;
    }
    
    //Otherwise
    else {
    
        //If the player is moving to the left or the right
        if (direction == 0)
        || (direction == 180) {
        
            //Do not animate
            image_index = 4;
            
            //Set facing direction
            if (hspeed > 0)
                xscale = 1;
            else if (hspeed < 0)
                xscale = -1;
        }
        
        //Otherwise, if the player is moving up or down
        else {
        
            //If the player's horizontal speed is lower or greater than 0
            if (hspeed != 0) {
            
                //Set the frame
                image_index = 4;
                
                //Set the facing direction
                if (hspeed > 0)
                    xscale = 1;
                else if (hspeed < 0)
                    xscale = -1;
            }
            
            //Otherwise, if the player is moving up or down
            else {
            
                //Set the default facing direction
                xscale = 1;
                
                //If the player is climbing
                if (place_meeting(x,y,obj_climb))
                    image_index = 6;
                
                //Otherwise
                else {
                    
                    //If the player is moving up
                    if (direction == 90)
                        image_index = 2
                        
                    //Otherwise, if the player is moving down
                    else if (direction == 270)
                        image_index = 0;
                }
            }
        }
    }
}

//Update animation for arrows
anim += 0.075;

//Reset levelname on manager if moving
if (speed > 0)
&& (obj_mapcontrol.levelname != "") {

    obj_mapcontrol.levelid = "999";
    obj_mapcontrol.levelname = "";
}

