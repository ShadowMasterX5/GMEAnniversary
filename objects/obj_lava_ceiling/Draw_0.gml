/// @description Draw the lava

//Draw the inside part of the lava if it's greater than 16 pixels
if (sprite_height > 16) {

    draw_sprite_tiled_area_ext(sprite_index, 0, x, y+sprite_height-16, x, y, x+sprite_width-1, y+sprite_height-16, c_white, 1);
}

//Draw the lava always at the bottom
draw_sprite_tiled_area_ext(sprite_index, -1, x, y+sprite_height-16, x, y+sprite_height-16, x+sprite_width-1, y+sprite_height-1, c_white, 1);

