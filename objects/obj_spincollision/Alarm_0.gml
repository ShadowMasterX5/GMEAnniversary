/// @description Make the player bounce

//End spin
spin = 2;
alarm[1] = 10;

//If the player vertical speed is lower than 0...
if (obj_playerparent.yspeed < 0)
    obj_playerparent.yspeed = obj_playerparent.yspeed*1.5;

