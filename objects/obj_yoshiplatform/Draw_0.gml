/// @description Draw the platform

//Set the palette
pal_swap_set(spr_palette_yoshi, colour);

//Draw it
draw_sprite(sprite_index,-1,round(x),round(y));

//Reset shader
pal_swap_reset();

