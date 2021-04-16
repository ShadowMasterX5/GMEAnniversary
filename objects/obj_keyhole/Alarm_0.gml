/// @description Return to the map

//Return to the map
if (instance_number(obj_fadein) == 0) {

    with (instance_create(0,0,obj_fadein))
        target = rm_map;
}

