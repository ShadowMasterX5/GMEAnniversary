/// @description Draw the lightning sheet

//Disable the fog
d3d_set_fog(0, c_black, 0, 64);

//Set the colour
draw_set_colour(c_white);

//Set the alpha
draw_set_alpha(alpha);

//Draw a rectangle
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), 0);

//Reset alpha
draw_set_alpha(1);

//Enable the fog
d3d_set_fog(1, c_black, 0, 64);

