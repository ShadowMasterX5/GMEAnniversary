/// @description Draw blocks

//Set the palette shader
var pal = palette_get();
if (pal != spr_palette_null) {

    pal_swap_set(pal, global.skin);
}

//Draw the block
draw_sprite(sprite_index,-1,round(x),round(y));

//Reset shader
pal_swap_reset();

