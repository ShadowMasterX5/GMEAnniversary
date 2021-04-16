/// @description Draw the lava

//Set the colour
draw_set_colour(make_colour_rgb(216, 32, 0));

//Draw a rectangle that covers the entire map
draw_rectangle(x, y, x+(image_xscale*16), y+(image_yscale*16), false);

//Draw bubbles
draw_sprite_tiled_area_ext(sprite_index, anim, x, y, x, y, x+(image_xscale*16), y+(image_yscale*16), c_white, 1);

//Reset the colour
draw_set_colour(c_white);

