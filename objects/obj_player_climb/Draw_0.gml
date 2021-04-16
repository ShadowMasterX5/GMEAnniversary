/// @description Draw player

//Set the palette
pal_swap_set(spr_palette_mario, isflashing);

//Draw the player
draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);

//Reset the palette
pal_swap_reset();

