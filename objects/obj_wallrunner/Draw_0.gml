/// @description Draw the player

//Set the shader
pal_swap_set(spr_palette_mario,obj_playerparent.isflashing);

//Draw player
draw_sprite_ext(sprite_index,-1,round(x),round(y),1,xscale,angle,c_white,obj_playerparent.image_alpha);

//Reset shader
pal_swap_reset();

