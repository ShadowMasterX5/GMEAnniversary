/// @description Draw boom-boom

if (inv > 0)
    draw_sprite_ext(sprite_index, -1, round(x), round(y)+1, xscale, 1, 0, c_red, image_alpha);
else
    draw_sprite_ext(sprite_index, -1, round(x), round(y)+1, xscale, 1, 0, c_white, image_alpha);

