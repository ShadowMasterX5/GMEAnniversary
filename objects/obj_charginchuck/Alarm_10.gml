/// @description Start moving

//Set the running sprite
sprite_index = spr_charginchuck_walk;

//Animate
image_speed = 0.5;

//Disable friction
friction = 0;

//Play sound
alarm[0] = 6;

//Move towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.75;
else
    hspeed = 1.75;

