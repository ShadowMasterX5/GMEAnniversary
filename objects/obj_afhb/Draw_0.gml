/// @description Draw the platform

//Wings
draw_sprite_ext(sprite_index, -1, round(x), round(y), 1, 1, 0, c_white, 1);

//Left block
draw_sprite_ext(sprite_index, 2, round(x), round(y)+loffset, 1, 1, 0, c_white, 1)

//Right block
draw_sprite_ext(sprite_index, 3, round(x), round(y)+roffset, 1, 1, 0, c_white, 1)

