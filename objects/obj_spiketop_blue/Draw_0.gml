/// @description Draw spiketop

if (turn == 0)
    draw_sprite_ext(sprite_index,-1, round(x), round(y), xscale, 1, direction, c_white, 1);
else
    draw_sprite_ext(spr_spiketop_blue_turn, turn-1, round(x), round(y), xscale, 1, direction, c_white, 1);

