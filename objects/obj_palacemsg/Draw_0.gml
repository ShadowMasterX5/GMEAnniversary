/// @description Display up the message

//Set the colour for the rectangle
draw_set_colour(c_black);

//Set the alpha
draw_set_alpha(alpha/2);

//Draw the rectangle
draw_roundrect(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-141,__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)-62,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+139,__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+27,false);

//Set the font
draw_set_font(global.font_interface);

//Set the colour
draw_set_colour(c_white);

//Set the alpha
draw_set_alpha(alpha);

//Align the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Draw the text
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, (__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-16, string_hash_to_newline("- switch palace -#" 
+ " #"
+ "THE POWER OF THE SWITCH YOU#"
+ "HAVE PUSHED WILL TURN#"
+ " #"
+ " #"
+ "INTO#"
+ " #"
+ "YOUR PROGRESS WILL ALSO BE SAVED!"));

//Re-Align the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//Draw the blocks
draw_sprite_ext(sw, 1, __view_get( e__VW.XView, 0 )+152, __view_get( e__VW.YView, 0 )+96, 1, 1, 0, c_white, alpha);
draw_sprite_ext(sw, 0, __view_get( e__VW.XView, 0 )+216, __view_get( e__VW.YView, 0 )+96, 1, 1, 0, c_white, alpha);

//Reset alpha
draw_set_alpha(1);

