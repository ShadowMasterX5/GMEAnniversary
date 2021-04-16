/// @description Paths for the player to walk in

//Do not animate
image_speed = 0;
image_index = 0;

//Hereby depth
depth = 8;

//If this path has been opened before, make it visible
if (ds_map_find_value(global.mapscreen, id) == 1)
    visible = true;

