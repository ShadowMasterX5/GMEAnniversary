/// @description Deals with the application surface, window size, and fading.

//Disable alpha blending
draw_enable_alphablend(0);

//Draw a rectangle
draw_rectangle_colour(0, 0, global.gw*(filter+1), global.gh*(filter+1), c_black, c_black, c_black, c_black, 0);

//Draw the application surface
draw_surface_stretched(application_surface, port_x*(filter+1), port_y*(filter+1),global.gw*(filter+1), global.gh*(filter+1));

//Enable alpha blending
draw_enable_alphablend(1);

//Set 'Interface' font
draw_set_font(global.font_interface);

//Draw 'FPS' if below 60 and FPS showing is on
if (showfps == true)
    draw_text_colour(2, 2, string_hash_to_newline(string("FPS: ") + string(fps)), c_white, c_white, c_white, c_white, 1);

