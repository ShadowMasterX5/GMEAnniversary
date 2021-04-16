/// @description Move towards the player

//Destroy if the player does not exist
if (!instance_exists(obj_playerparent)) {

    instance_destroy();
    exit;
}

//Move towards the player
x = obj_playerparent.x;
if (obj_playerparent.mask_index == spr_mask)
    y = obj_playerparent.y+6;
else
    y = obj_playerparent.y-7;

