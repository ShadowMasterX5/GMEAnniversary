/// @description A silver coin

//Inherit create event
event_inherited();

//Jump a bit
vspeed = -4;
y--;

//Move in the opposite way the player is
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = 0.5;
else
    hspeed = -0.5;

