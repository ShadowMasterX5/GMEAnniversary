/// @description Blowing pipe logic.

//If the pswitch is not active.
if (!obj_levelcontrol.switchon) {
    
    if (direct == 0) { //Up
    
        //Set up the position of the blown bubbles.
        if (!ready2) {
        
            b++;
            if (b = 8)
                ready2 = true;
        }
        else {
        
            b--;
            if (b = 0)
                ready2 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_right-4-b,bbox_top-4,obj_bubble_blown)) motion_set(90,6);
    }
    else if (direct == 1) { //Down
    
        //Set up the position of the blown bubbles.
        if (!ready2) {
        
            b++;
            if (b = 8)
                ready2 = true;
        }
        else {
        
            b--;
            if (b = 0)
                ready2 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_right-4-b,bbox_bottom,obj_bubble_blown)) motion_set(270,6);    
    }
    else if (direct == 2) { //Left
    
        //Set up the position of the blown bubbles.
        if (!ready2) {
        
            b++;
            if (b = 8)
                ready2 = true;
        }
        else {
        
            b--;
            if (b = 0)
                ready2 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_left-4,bbox_bottom-4-b,obj_bubble_blown)) motion_set(180,6);
    }
    else if (direct == 3) { //Right
    
        //Set up the position of the blown bubbles.
        if (!ready2) {
        
            b++;
            if (b = 8)
                ready2 = true;
        }
        else {
        
            b--;
            if (b = 0)
                ready2 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_right,bbox_bottom-4-b,obj_bubble_blown)) motion_set(0,6);
    }
}

//Repeat the process.
alarm[1] = round(random_range(5,10));

