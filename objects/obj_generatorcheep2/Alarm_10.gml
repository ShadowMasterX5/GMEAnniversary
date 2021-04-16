/// @description Start moving

//Set the horizontal speed
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.5;
else
    hspeed = 1.5;
    
//Set the vertical speed
vspeed = -6;
gravity = 0.1;

