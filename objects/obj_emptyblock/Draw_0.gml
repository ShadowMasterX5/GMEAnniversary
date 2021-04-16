/// @description Draw empty Question Block

//Set the palette shader
var pal = 0;
pal = palette_get();
pal_swap_set(pal, global.skin);

//Draw the block
draw_sprite(sprite_index,-1,round(x),round(y));

//Reset shader
pal_swap_reset();

