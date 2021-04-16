/// @description Move towards the player

vspeed = -4+(2*swimming);
y--;
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;

