/// @description Turn at ledges script

//If the object is affected by gravity
if (gravity == 0) {

    //If moving left
    if (hspeed < 0) {
    
        //If there's no ground on the way, turn around
        if (!collision_rectangle(bbox_left+3, bbox_bottom-1, bbox_left+3, bbox_bottom+4, obj_semisolid, 0, 0))
        && (!collision_rectangle(bbox_left+3, bbox_bottom-1, bbox_left+3, bbox_bottom+5, obj_slopeparent, 1, 0))
            hspeed = -hspeed;
    }
    
    //Otherwise, if moving right
    else if (hspeed > 0) {
    
        //If there's no ground on the way, turn around
        if (!collision_rectangle(bbox_right-3, bbox_bottom-1, bbox_right-3, bbox_bottom+4, obj_semisolid, 0, 0))
        && (!collision_rectangle(bbox_right-3, bbox_bottom-1, bbox_right-3, bbox_bottom+5, obj_slopeparent, 1, 0))
            hspeed = -hspeed;            
    }
}

