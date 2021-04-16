/// @description Start moving

//Set vertical speed
vspeed = 1;

//Move towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;

