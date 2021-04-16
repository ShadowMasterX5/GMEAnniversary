/// @description Draw hoopster

if (vspeed < 0)
    draw_sprite_ext(sprite_index, -1, round(x), y, 1, 1, 0, c_white, 1);
else
    draw_sprite_ext(sprite_index, -1, round(x), y+16, 1, -1, 0, c_white, 1);

