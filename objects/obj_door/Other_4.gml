/// @description If this door was opened before, unlock it.

if (ds_map_find_value(global.doors, id) == 1)   
    locked = 0;

