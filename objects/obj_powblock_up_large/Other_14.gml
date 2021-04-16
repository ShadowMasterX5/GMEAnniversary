/// @description Default floor collision

//When moving down
if (vspeed > 0) {

    //Check for a semisolid below
    var semisolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_semisolid,0,0);
    
    //If the semisolid exists, snap above it.
    if (semisolid)
    && (bbox_bottom < semisolid.yprevious+5)
    && (!collision_rectangle(x-1,bbox_bottom,x+1,bbox_bottom+4,obj_slopeparent,1,0))
        y = semisolid.y+floor(y-bbox_bottom-0.9)
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
if ((collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_semisolid,0,0))
&& (!collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom-4,obj_semisolid,0,0)))
|| (collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+1,obj_slopeparent,1,0)) {

    //Stop gravity
    gravity = 0;
    
    //If the vertical speed is greater than 0.5
    if (vspeed > 0) {
    
        //Bounce back
        vspeed = -3;
    
        //How many bounces are left?
        if (bounces > 1) {
        
            //Shake the entire screen
            with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),obj_powkiller)) {
            
                hitcombo = other.hitcombo;
                parent = other.id;
            }
            
            //Create a big smoke effect
            with (instance_create(x,y,obj_smoke)) sprite_index = spr_supersmash;
            
            //Set smashed sprite
            sprite_index = spr_powblock_large_th;
            
            //Return to normal
            alarm[0] = 16;
            
            //Decrement bounces
            bounces--;
        }
        
        //Otherwise, if there's only one bounce left
        else if (bounces == 1) {
        
            //Shake the entire screen
            with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),obj_powkiller)) {
            
                hitcombo = other.hitcombo;
            }
                        
            //Create a big smoke effect
            with (instance_create(x,y,obj_smoke)) sprite_index = spr_supersmash;
            
            //Create a big smoke effect
            with (instance_create(x-8,y-16,obj_smoke)) {
            
                image_xscale = 2;
                image_yscale = 2;
            }
            
            //Destroy
            instance_destroy();
        }
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
if (vspeed < 0)
&& ((collision_rectangle(bbox_left+1,bbox_top+vspeed-1,bbox_right-1,bbox_top-1,obj_solid,1,0)) 
|| (collision_rectangle(bbox_left+1,bbox_top+vspeed-1,bbox_right-1,bbox_top-1,obj_ceilslopeparent,1,0))) {
    
    //Prevent the player's head from getting stuck on a ceiling.
    if (vspeed != 0) {

        while ((collision_rectangle(bbox_left+1,bbox_top,bbox_right-1,bbox_top,obj_solid,1,0))
        || (collision_rectangle(bbox_left+1,bbox_top,bbox_right-1,bbox_top,obj_ceilslopeparent,1,0)))
            y++;
    }
    
    //Stop vertical speed
    vspeed = 0;
}

//Make sure that the player does not get embed on ceiling slopes
if (vspeed != 0)
    while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_ceilslopeparent,1,0))
        y++;

