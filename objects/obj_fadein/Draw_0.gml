/// @description Draw the effect.

//Draw the screenshot.
if (background_exists(back)) {

    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//Draw screen mask
draw_sprite_ext(spr_screenmask, -1, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 ), 1.5, 1.5, 0, c_black, alpha);

