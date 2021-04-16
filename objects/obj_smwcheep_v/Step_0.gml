/// @description SMW Cheep Cheep (Vertical) logic
/// @param Vertical

//Wall collision
event_user(3);

//If the cheep cheep is moving to the right.
if (vspeed > 0) {
    
    //Change direction
    if (y > ystart+32)
        vspeed = -vspeed;
}

//Otherwise, if the cheep cheep is moving to the left.
else if (vspeed < 0) {
        
    //Change direction.
    if (y < ystart-32)
    || (!collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))    
        vspeed = -vspeed;
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

