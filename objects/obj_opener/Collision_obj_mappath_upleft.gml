/// @description Go up if moving right or go left if moving down

//If moving right
if (hspeed > 0) {

    if (x == other.x-8)
        vspeed = -2;
    if (x == other.x)
        hspeed = 0;
}

//If moving down
if (vspeed > 0) {

    if (y == other.y-8)
        hspeed = -2;
    if (y == other.y)
        vspeed = 0;
}

