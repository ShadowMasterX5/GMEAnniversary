/// @description Purple Shyguy logic

//Inherit event
event_inherited();

//Face towards direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

