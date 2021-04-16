/// @description Walrus logic

//Inherit event
event_inherited();

//Face towards the player
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

