/// @description Move towards the player

//Move towards the player
if (hspeed == 0) {

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//If in contact with a slippery surface, chaaaaarge... otherwise, turn around
if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0))
    charge = 1;
else
    alarm[11] = 60;

