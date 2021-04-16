/// @description Frog suit logic

//Inherit event
event_inherited();

//Bounce on contact with the ground
if (gravity == 0) {

    if (swimming)
        vspeed = -2;
    else
        vspeed = -4;
}

