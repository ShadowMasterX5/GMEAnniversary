/// @description Go down if moving left or go right if moving up

//If moving right
if (hspeed < 0) {

    if (x == other.x+8)
        vspeed = 2;
    if ((x == other.x) && (!place_meeting(x,y,obj_mappath_upleft)))
        hspeed = 0;
}

//If moving down
if (vspeed < 0) {

    if (y == other.y+8) 
        hspeed = 2;
    if ((y == other.y) && (!place_meeting(x,y,obj_mappath_upleft)))
        vspeed = 0;
}

