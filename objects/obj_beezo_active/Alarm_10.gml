/// @description Start moving

//Move down
vspeed = 1.5+random(1.5);

//Set the horizontal speed
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    ready = -1;
else
    ready = 1;

