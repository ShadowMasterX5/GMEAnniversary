/// @description Draw note block

//Set shader
pal_swap_set(spr_palette_warpnoteblock, pal);

//Draw it
draw_sprite_ext(sprite_index, -1, round(x), round(y), scale, scale, 0, c_white, 1);

//Reset shader
pal_swap_reset();

