/// @description Draw ceiling spiny

if (ready == 0)
    draw_sprite_ext(sprite_index, -1, round(x), y+15, xscale, -1, 0, c_white, 1);
else
    event_inherited();

