/// @description Draw the waterwall

draw_sprite_tiled_area_ext(spr_waterfall_top, -1, x, y, x, y, x+sprite_width-1, y+15, c_white, 1);
if (sprite_height > 16) {

    draw_sprite_tiled_area_ext(spr_waterfall_bottom, -1, x, y+16, x, y+16, x+sprite_width-1, y+sprite_height-1, c_white, 1);
}

