/// @description Move towards the player

//Shoot fireballs
alarm[0] = 60;

//Move towards the player
alarm[11] = 60;

//Move towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;
