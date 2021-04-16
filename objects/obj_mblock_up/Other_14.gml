/// @description Default floor collision

//When moving down
if (vspeed > 0) {

    //Check for a semisolid below
    var semisolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_semisolid,0,0);
    
    //If the semisolid exists, snap above it.
    if (semisolid)
    && (bbox_bottom < semisolid.yprevious+5)
    && (!collision_rectangle(x-1,bbox_bottom,x+1,bbox_bottom+4,obj_slopeparent,1,0))
        y = semisolid.bbox_top-16;
}

//Embed the NPC into the slope to ensure correct slope physics.
if (collision_rectangle(x-1,bbox_bottom,x+1,bbox_bottom+4,obj_slopeparent,1,0)) 
&& (!collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom-4,obj_slopeparent,1,0))
&& (vspeed == 0) {

    //Make sure it's not in contact with a semisolid
    if (!collision_rectangle(x-1,bbox_bottom,x+1,bbox_bottom+1,obj_semisolid,0,0))
        y += 4;
}
    
//Handle slope collision
if (collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom,obj_slopeparent,1,0))
&& (!collision_rectangle(x-1,bbox_bottom-8,x+1,bbox_bottom-8,obj_slopeparent,1,0)) {

    //Stay embed on the slope.
    while collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom,obj_slopeparent,1,0)
        y--;
}

//Check for floor objects
if ((collision_rectangle(bbox_left+1,bbox_bottom+1,bbox_right-1,bbox_bottom+1,obj_semisolid,0,0))
&& (!collision_rectangle(bbox_left+1,bbox_bottom-4,bbox_right-1,bbox_bottom-4,obj_semisolid,0,0)))
|| (collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+1,obj_slopeparent,1,0)) {

    //Stop gravity
    gravity = 0;
    
    //If the vertical speed is greater than 0.5
    if (vspeed > 0.5) {
    
        //Reduce horizontal speed
        hspeed = hspeed/2;
        
        //Bounce back
        vspeed = -vspeed/2;
    }
    
        
    //Otherwise, stop it instantly.
    else {
        
        //Create a new mushroom block
        with (instance_create(x,y,obj_mblock)) {
        
            //Snap horizontally
            x = round(x/16)*16;
            
            //Snap vertically
            y = ceil(y/8)*8;
            while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
                y--;
        }
        
        //Destroy
        instance_destroy();
    }
}
else {

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
        gravity = 0.05;
        
        //Cap vertical speed
        if (vspeed > 1)
            vspeed = 1;
    }
}

//If the player is moving up
if (vspeed <= 0)
&& ((collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_solid,1,0)) 
|| (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_ceilslopeparent,1,0))) {
    
    //Prevent the player's head from getting stuck on a ceiling.
    if (vspeed != 0) {

        while ((collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_solid,1,0))
        || (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_ceilslopeparent,1,0)))
            y++;
    }
    
    //Stop vertical speed
    vspeed = 0;
}

//Make sure that the player does not get embed on ceiling slopes
if (vspeed != 0)
    while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_ceilslopeparent,1,0))
        y++;

