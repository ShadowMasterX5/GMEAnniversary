/// @description Start moving

//Set the horizontal movement
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    dir = -1;
else
    dir = 1;

