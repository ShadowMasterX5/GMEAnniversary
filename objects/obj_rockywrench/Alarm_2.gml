/// @description Throw a wrench, then enter the hole.

//Animate
image_speed = 0.2;

//Wrench
with (instance_create(x,y+8,obj_wrench)) {

    vspeed = -1;
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1.5;
    else
        hspeed = 1.5;
}

//Make it come inside the hole.
alarm[3] = 45;

