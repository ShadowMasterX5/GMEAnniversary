/// @description Para-Walrus logic

//Inherit event
event_inherited();

//Jump
if (gravity == 0) {

    //If the object is swimming
    if (swimming)
        vspeed = -2;
    else
        vspeed = -4;
}

//Face towards the player
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

