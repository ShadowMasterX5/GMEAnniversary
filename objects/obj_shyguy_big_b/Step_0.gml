/// @description Big blue Shyguy logic

//Inherit event
event_inherited();

//Turn on ledges
event_user(6);

//Face towards direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

