/// @description Draw shard

//Set the palette shader
var pal = palette_get();
if (pal != spr_palette_null) {

    pal_swap_set(pal, global.skin);
}

//Draw the block
draw_sprite_ext(sprite_index,-1,round(x),round(y), 1, 1, 0, c_white, 1);

//Reset shader
pal_swap_reset();

