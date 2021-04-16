/// @description Draw the player

//If the player is riding a yoshi
if (global.mount == 1) {
        
    //Set Yoshi palette
    pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
    
    //Draw Yoshi
    draw_sprite_ext(spr_yoshi, anim, round(x), round(y)+1, image_xscale, 1, 0, c_white, image_alpha);
        
    //Reset palette
    pal_swap_reset();
    
    //Draw the player
    player_draw_yoshi(scr_mario_ride(), 0, x, y+obj_yoshi.myy, image_xscale);
}

//Otherwise, draw normally
else
    draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);

