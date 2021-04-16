/// @description 3up Moon

//Destroy if this was collected before
if (ds_map_find_value(global.moons, id) == 1)
    instance_destroy();

