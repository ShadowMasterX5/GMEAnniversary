/// @description Move towards the player

if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.5;
else
    hspeed = 1.5;
