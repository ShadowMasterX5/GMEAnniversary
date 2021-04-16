/// @description Move towards the player

vspeed = -1.5+(0.75*swimming);
y--;
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -0.2;
else
    hspeed = 0.2;

