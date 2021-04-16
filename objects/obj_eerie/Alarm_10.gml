/// @description Start moving

//Set the vertical speed
vspeed = wave;

//Set the horizontal speed
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;

