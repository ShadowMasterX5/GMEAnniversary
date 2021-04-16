/// @description Draw the waterwall

draw_sprite_tiled_area_ext(spr_waterfall2_top, -1, x, y, x, y, x+sprite_width-1, y+16, c_white, 1);
if (sprite_height > 16) {

    draw_sprite_tiled_area_ext(spr_waterfall2_bottom, -1, x, y+16, x, y+16, x+sprite_width-1, y+sprite_height, c_white, 1);
}

