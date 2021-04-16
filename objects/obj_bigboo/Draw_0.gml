/// @description Draw 'Big' boo

if (sprite_index != spr_boo_large_turn)
    draw_sprite_ext(spr_boo_large, movenow, round(x), y, xscale, 1, 0, c_white, 1);
else
    draw_sprite_ext(spr_boo_large_turn, -1, round(x), y, xscale, 1, 0, c_white, 1);

