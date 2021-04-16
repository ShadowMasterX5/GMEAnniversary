/// @description Draw the menu.

//Draw the menu
draw_sprite_ext(spr_pausemenu,2,__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh/2,scale,scale,0,c_white,1);

//Align the text
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//Set up the font
draw_set_font(font);

//Set the alpha
draw_set_alpha(1);

//Draw the text on the menu
if (scale >= 1) {

    for(i = 0; i < 3; i++) {
    
        text = string(menu[i]);
        if (choice != i)
            draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh/2-12+(i)*12,string(text), make_color_rgb(1,117,203), make_color_rgb(151,216,255), 1, 1, 1, 1);
        else
            draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh/2-12+(i)*12,"{ " + string(text) + " }", make_color_rgb(1,117,203), c_white, 1, 1, 1, 1);
    }
}

//Re align the text
draw_set_halign(fa_left);
draw_set_valign(fa_top);

