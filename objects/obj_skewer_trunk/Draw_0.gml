/// @description Draw skewer

//Draw end
draw_sprite_ext(sprite_index, 0, round(x), round(y), 1, 1, 0, c_white, 1);

//Draw trunk
draw_sprite_tiled_area_ext(sprite_index, 1, round(x), round(y), x, parent.y+16, x+64, y, c_white, 1);

