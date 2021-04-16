/// @description Go down if moving right or go left if moving up

//If moving right
if (hspeed > 0) {

    if (x == other.x-8)
        vspeed = 1;
    if ((x == other.x) && (!place_meeting(x,y,obj_mappath_upright)))
        hspeed = 0;
}

//If moving down
if (vspeed < 0) {

    if (y == other.y+8)
        hspeed = -1;
    if ((y == other.y) && (!place_meeting(x,y,obj_mappath_upright)))
        vspeed = 0;
}

