/// @description Collision with moving platforms

/*
//  IMPORTANT NOTE:
//
//  This event must be called in a 'End Step' event, otherwise it will not work properly.
*/

var moving = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+4,obj_platformparent,0,0);
if (moving) {

    //With this platform
    with (moving) {
    
        //If this instance is on the platform
        if (collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_bottom+4,other.id,0,0)) 
        && (other.id.bbox_bottom < yprevious+5)
        && (other.id.vspeed >= 0) {
        
            //Make sure the NPC is not overlapping another platform
            var check = collision_rectangle(other.id.bbox_left,other.id.bbox_bottom-1,other.id.bbox_right,other.id.bbox_bottom+1,obj_semisolid,0,1);
            if (check)
                exit;
                
            //Snap the instance vertically
            other.id.y = ceil(bbox_top-15);
            
            //Move the player horizontally if there is no solid in his way
            if (x < x-xprevious) && (!collision_rectangle(other.id.bbox_left-1,other.id.bbox_top+4,other.id.bbox_left,other.id.bbox_bottom-5,obj_solid,0,0))
            || (x > x-xprevious) && (!collision_rectangle(other.id.bbox_right,other.id.bbox_top+4,other.id.bbox_right+1,other.id.bbox_bottom-5,obj_solid,0,0))
                other.id.x += x-xprevious;
        }
    }
}

/* */
/*  */
