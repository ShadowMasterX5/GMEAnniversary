/// @description Draw a moving ? mark

//Set the palette shader
var pal = palette_get();
if (pal != spr_palette_null) {

    pal_swap_set(pal, global.skin);
}

//Draw the block
draw_sprite(sprite_index, 0, round(x), round(y));
draw_sprite_tiled_area_ext(sprite_index, 1, round(x)-xx, round(y), x+1, y+1, x+sprite_width-2, y+sprite_height-1, c_white, 1);

//Reset shader
pal_swap_reset();

