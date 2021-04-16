/// @description Move towards the player

if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    speed = -0.5;
else
    speed = 0.5;

