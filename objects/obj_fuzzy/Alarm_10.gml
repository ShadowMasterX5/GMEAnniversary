/// @description Move towards the player

if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    speed = -1;
else
    speed = 1;

