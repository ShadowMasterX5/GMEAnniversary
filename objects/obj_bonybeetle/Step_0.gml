/// @description Bony Beetle

//Inherit event
event_inherited();

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;
