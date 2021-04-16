/// @description Holdable item logic when not held

//If the item is not being held
if (held != 1) {

    //Set the gravity when not underwater
    if (!swimming) {
    
        //Gravity
        gravity = 0.2;
        
        //Cap vertical speed
        if (vspeed > 4)
            vspeed = 4;
    }
    
    //Otherwise, set the gravity when underwater
    else {
    
        //Gravity
        gravity = 0.03;
        
        //Cap vertical speed
        if (vspeed > 1)
            vspeed = 1;
    }
    
    //Check for a water object
    var water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0);
    
    //If the object is not underwater and makes contact with water
    if (water) && (!swimming) {
    
        //Make the object go underwater
        swimming = true;
        
        //Stop vertical movement
        if (vspeed > 0)
            vspeed = 0;
    }
    
    //Otherwise, if the object is underwater and it's not underwater, end swimming.
    else if (!water) && (swimming)    
        swimming = false;
}

