/// @description Holdable item logic when not held

//If the item is not being held
if (!held) {

    //If the item is not stuck in a solid
    if (!inwall) {
    
        //Wall collision
        event_user(3);

        //Floor collision
        event_user(4);
                
        //Slowdown if in contact with the floor and not kicked
        if ((vspeed == 0) && (ready == 0)) {
        
            //If the item is not underwater
            if (!swimming) {
            
                //Slowdown until it stops
                hspeed = max(0,abs(hspeed)-0.075)*sign(hspeed);
                if (abs(hspeed) < 0.075)
                    hspeed = 0;
            }
            
            //Otherwise, if the item is underwater
            else if (swimming) {
                        
                //Slowdown until it stops
                hspeed = max(0,abs(hspeed)-0.0375)*sign(hspeed);
                if (abs(hspeed) < 0.0375)
                    hspeed = 0;            
            }
        }
        
        //Stop it if it gets stuck in a solid
        if (ready == 0)
        && (vspeed < 0)
        && (collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,0,0)) {
        
            //Stop movement
            speed = 0;
            gravity = 0;
            
            //Make the item move
            inwall = true;
        }        
    }
    
    //Otherwise, if the item is stuck in a solid
    else {
    
        //Move it until it does not make contact with a solid
        x -= 2.5*sign(dir);
       
        //If the item is not longer overlapping a solid
        if (!collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,0,0))
            inwall = false;        
    }
    
    //Check for a body of water
    var water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0);
    
    //If the object is not underwater and makes contact with water
    if (water) 
    && (!swimming) {
    
        //Make the object go underwater
        swimming = true;
        
        //Stop vertical movement
        gravity = 0;
        if (vspeed > 0)
            vspeed = 0;
    }
    
    //Otherwise, if the object is underwater and it's not underwater, end swimming.
    else if (!water) 
    && (swimming)
        swimming = false;
}

//If kicked
if (ready) {

    //Animate faster
    image_speed = 0.5;
    
    //Destroy when there's no horizontal speed
    if (hspeed == 0)
        event_user(0);
}

//Destroy when outside the view
if (outside_view())
    instance_destroy();

