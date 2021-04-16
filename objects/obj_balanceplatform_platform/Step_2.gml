/// @description Platform logic.

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.y < y-11)
&& (obj_playerparent.state < 2)) {

    //If Mario is not above.
    if (!passenger) {
    
        passenger = true;
        if (creator.object_index == obj_balanceplatform) 
        && (creator.direction == 90) {
        
            if (obj_playerparent.x < x)
                creator.direction++;
            else
                creator.direction--;
        }     
    }
    
    //Check for a moving platform
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+vspeed,obj_semisolid,0,1);
    if (check)
    && (vspeed > 0)
        exit;

    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-15);

    //Snap the player horizontally and prevent it from getting embed on a solid.
    obj_playerparent.x += x-xprevious;
    if (collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x--;
    else if (collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x++;   
}

//Otherwise, if the player is no longer on the platform.
else
    passenger = false;

