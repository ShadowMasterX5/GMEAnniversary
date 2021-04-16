/// @description Draw the text

//Align it
draw_set_halign(fa_center);

//Set the font
draw_set_font(global.font_message);

//Draw the text
draw_text_colour_shadowed(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2, round(y), string(mytext), c_black, colour, 1, 1, 0.5, 1);

//Reset align
draw_set_halign(fa_left);

