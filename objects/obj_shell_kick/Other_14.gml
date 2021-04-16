/// @description Custom floor / ceiling collision

//When moving down
if (vspeed >= 0) {

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

    if (!collision_rectangle(x-1,bbox_bottom,x+1,bbox_bottom+5,obj_semisolid,0,0))
        y += 4;
}
    
//Handle slope collision
if (vspeed > -0.85)
&& ((collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom,obj_slopeparent,1,0))
&& (!collision_rectangle(x-1,bbox_bottom-8,x+1,bbox_bottom-8,obj_slopeparent,1,0))) {

    //Stay embed on the slope.
    while (collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom,obj_slopeparent,1,0))
        y--;
}

//Check for floor objects
if ((collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_semisolid,0,0))
&& (!collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom-4,obj_semisolid,0,0)))
|| (collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+1,obj_slopeparent,1,0)) {

    //Set default mask
    mask_index = sprite_index;

    //Stop vertical movement
    vspeed = 0;
    gravity = 0; 
}
else {

    //Set the mask
    mask_index = spr_shellmask;
    
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
}

//If the player is moving up
if (vspeed < 0)
&& ((collision_rectangle(bbox_left+1,bbox_top+vspeed-1,bbox_right-1,bbox_top-1,obj_solid,1,0)) 
|| (collision_rectangle(bbox_left+1,bbox_top+vspeed-1,bbox_right-1,bbox_top-1,obj_ceilslopeparent,1,0))) {
    
    //Prevent the NPC from getting stuck on a ceiling.
    while (collision_rectangle(bbox_left+1,bbox_top,bbox_right-1,bbox_top,obj_solid,1,0))
        y++;
    
    //Stop vertical speed
    vspeed = 0;
}

