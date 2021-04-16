/// @description Draw Yoshi

//Set palette
pal_swap_set(spr_palette_yoshi, colour);

//Draw Yoshi
draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,xscale,1,0,c_white,1);

//Reset shader
pal_swap_reset();

