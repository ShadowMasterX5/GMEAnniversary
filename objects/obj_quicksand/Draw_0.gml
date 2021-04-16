/// @description Draw the quicksand

draw_sprite_tiled_area_ext(spr_quicksand, -1, x, y, x, y, x+sprite_width-1, y+15, c_white, 1);
if (sprite_height > 16) {

    draw_sprite_tiled_area_ext(spr_quicksandb, -1, x, y+16, x, y+16, x+sprite_width-1, y+sprite_height-1, c_white, 1);
}

