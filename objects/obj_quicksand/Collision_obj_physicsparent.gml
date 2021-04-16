/// @description Make NPCs sink slowly

//If the object is affected by gravity.
if (other.gravity > 0) {
    
    with (other) {
        
        //Stop vertical speed
        vspeed = 0;
        gravity = 0;
    
        //Sink slowly and stop vertical movement
        if (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_semisolid,0,0))
        && (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+2,obj_slopeparent,1,0))
            y += 0.1;
    }
}

