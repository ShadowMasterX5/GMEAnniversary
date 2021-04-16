/// @description Goombrat logic

//Inherit event
event_inherited();

//Turn around on ledges
event_user(6);

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

