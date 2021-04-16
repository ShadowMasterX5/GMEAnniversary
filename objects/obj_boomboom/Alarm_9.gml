/// @description Jump towards the player

//Animate
image_speed = 0.2*increment;

//Jump
vspeed = -6;
y--;

//Jump again
alarm[1] = 120;

//Follow player
alarm[11] = 60;

//Go after the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1*increment;
else
    hspeed = 1*increment;

