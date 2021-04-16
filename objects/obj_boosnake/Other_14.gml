/// @description Custom floor collision

//When moving down
if (vspeed > 0) {

    //Check for a semisolid below
    var semisolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_semisolid,0,0);
    
    //If the semisolid exists, snap above it.
    if (semisolid)
    && (bbox_bottom < semisolid.yprevious+5)
        y = semisolid.bbox_top-8;
}

//Check for floor objects
if ((collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_semisolid,0,0))
&& (!collision_rectangle(bbox_left,bbox_bottom-4,bbox_right,bbox_bottom-4,obj_semisolid,0,0)))
|| (collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+1,obj_slopeparent,1,0)) {

    //Reverse vertical speed
    if (vspeed > 0)
        vspeed = -vspeed;
}

//If the player is moving up
if (vspeed < 0)
&& ((collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_solid,1,0)) 
|| (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_ceilslopeparent,1,0))) {
    
    //Prevent the npc's head from getting stuck on a ceiling.
    if (vspeed != 0) {

        while ((collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_solid,1,0))
        || (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_ceilslopeparent,1,0)))
            y++;
    }
    
    //Reverse vertical speed
    vspeed = -vspeed;
}

//Make sure that the npc does not get embed on ceiling slopes
if (vspeed != 0)
    while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_ceilslopeparent,1,0))
        y++;
