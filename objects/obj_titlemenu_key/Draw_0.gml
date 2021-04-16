/// @description Draw menu

//Draw the screenshot if it exists
if (background_exists(back)) {

    //Disable alpha blending
    draw_enable_alphablend(0);
    
    //Draw screenshot
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending
    draw_enable_alphablend(1);
}

//Draw the box
draw_sprite_ext(spr_keybox, 0, __view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh-48, 1, 1, 0, c_white, 0.5);

//Set the font
draw_set_font(global.font_interface);

//Align the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Draw the text
draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh-48, keyText, c_black, c_white, 1, 1, 0.5, 1);

//Re-Align the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

