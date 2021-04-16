/// @description Start moving

if (!instance_exists(obj_playerparent))
|| (obj_playerparent.y < y)
    vspeed = -0.5;
else
    vspeed = 1;

