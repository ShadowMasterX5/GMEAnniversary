/// @description Blowing pipe logic.

//If the pswitch is not active.
if (!obj_levelcontrol.switchon) {
    
    if (direct == 0) { //Up
    
        //Set up the position of the blown bubbles.
        if (!ready1) {
        
            a++;
            if (a = 8)
                ready1 = true;
        }
        else {
        
            a--;
            if (a = 0)
                ready1 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_left+a,bbox_top-4,obj_bubble_blown)) motion_set(90,6);
    }
    else if (direct == 1) { //Down
    
        //Set up the position of the blown bubbles.
        if (!ready1) {
        
            a++;
            if (a = 8)
                ready1 = true;
        }
        else {
        
            a--;
            if (a = 0)
                ready1 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_left+a,bbox_bottom,obj_bubble_blown)) motion_set(270,6);    
    }
    else if (direct == 2) { //Left
    
        //Set up the position of the blown bubbles.
        if (!ready1) {
        
            a++;
            if (a = 8)
                ready1 = true;
        }
        else {
        
            a--;
            if (a = 0)
                ready1 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_left-4,bbox_top+a,obj_bubble_blown)) motion_set(180,6);
    }
    else if (direct == 3) { //Right
    
        //Set up the position of the blown bubbles.
        if (!ready1) {
        
            a++;
            if (a = 8)
                ready1 = true;
        }
        else {
        
            a--;
            if (a = 0)
                ready1 = false;
        }
        
        //Create a bubble
        with (instance_create(bbox_right,bbox_top+a,obj_bubble_blown)) motion_set(0,6);
    }
}

//Repeat the process.
alarm[0] = round(random_range(5,10));

