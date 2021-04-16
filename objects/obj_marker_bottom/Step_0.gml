/// @description Move towards the player

//Destroy if the player does not exist
if (!instance_exists(obj_playerparent)) {

    instance_destroy();
    exit;
}

//Move towards the player
x = obj_playerparent.x;
y = obj_playerparent.bbox_bottom;

