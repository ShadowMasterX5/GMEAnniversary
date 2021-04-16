/// @description Iceball logic

//Check previous hspeed
prevhspeed = hspeed;

//Inherit event
event_inherited();

//Bounce
if (gravity == 0) {

    vspeed = -2.5;
    y--;
}
else
    gravity = 0.125;

//Prevent swimming
if (swimming == 1)
    swimming = 0;
    
//Destroy when direction changes
if (hspeed != prevhspeed)
    event_user(0);

