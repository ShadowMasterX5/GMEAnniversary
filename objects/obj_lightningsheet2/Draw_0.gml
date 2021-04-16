/// @description Draw the lightning sheet

//Set the colour
draw_set_colour(c_white);

//Set the alpha
draw_set_alpha(alpha);

//Draw a rectangle
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), 0);

//Reset alpha
draw_set_alpha(1);

