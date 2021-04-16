/// @description SHS Lighting surface and drawing methods.

//Prepare the surface
if (!surface_exists(global.surf_light)) {

    global.surf_light = surface_create(room_width,room_height);
}

//Set the surface target
surface_set_target(global.surf_light);

//Clear the white colour from the lights
draw_clear(c_white-global.ambient_light);

//Set the blending mode
draw_set_blend_mode(bm_subtract);

//Enable texture interpolation
texture_set_interpolation(true);

//Draw all the lights
for (var i=0; i<instance_count; i++;) {

    if ((instance_exists(instance_id_get( i )))
    && (object_is_ancestor(instance_id_get( i ).object_index,obj_lightparent))) {
        
        with (instance_id_get( i )) {
        
            //Draw each light, alpha does not work in subtractive mode
            draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),image_xscale,image_yscale,image_angle,image_blend,1);
        }
    }
}

//Disable texture interpolation
texture_set_interpolation(false);

//Set the blending mode to normal
draw_set_blend_mode(bm_normal);

//Reset the surface target
surface_reset_target();

