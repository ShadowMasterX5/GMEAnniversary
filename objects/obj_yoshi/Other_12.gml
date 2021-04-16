/// @description Draw the player

//Set the palette
pal_swap_set(spr_palette_mario, obj_playerparent.isflashing);

//Draw the player
switch (global.player) {

    //Mario
    case (0): draw_sprite_ext(scr_mario_ride(),f,round(x),round(y)+1+myy,obj_playerparent.xscale,1,0,c_white,obj_playerparent.image_alpha); break;
}

//Reset palette
pal_swap_reset();

