/// @description Drop the reserve item

if (global.reserve != cs_small) {

    //Create a reserve item
    with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+12, obj_reserveitem)) {
    
        sprite_index = constant_get_sprite(global.reserve);
    }
        
    //Empty the reserve box
    global.reserve = cs_small;
}

