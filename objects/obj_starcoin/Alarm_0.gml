/// @description Check if this coin has been collected

if (ds_map_find_value(global.sc[type],global.level) > 0) {

    //If the coin is not collected
    if (ds_map_find_value(global.sc[type],global.level) < 3)
        instance_destroy();
    else
        sprite_index = spr_starcoin_get;
}
else
    alarm[1] = 7;

