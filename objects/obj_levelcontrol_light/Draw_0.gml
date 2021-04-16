/// @description Draw the surface

//Set the blending mode
draw_set_blend_mode(bm_subtract);

//Draw the surface
draw_surface(global.surf_light,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));

//Set the blending mode to normal
draw_set_blend_mode(bm_normal);

