/// @description Start moving

//Set the horizontal speed
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -2;
else
    hspeed = 2;

