/// @description Start moving

if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = random_range(0, -0.5);
else
    hspeed = random_range(0, 0.5);

