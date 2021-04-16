/// @description Draw player and item

//If the player is inside a kuribo shoe
if (global.mount == 2) {
    
    //Set the shader
    pal_swap_set(spr_palette_mario, isflashing);
    
    //Draw the player inside the shoe
    switch (global.player) {
    
        //Mario
        case (0): draw_sprite_ext(spr_mario_shoe, global.powerup, round(x), round(y)-15, image_xscale, 1, 0, c_white, 1); break;
    }
    
    //Reset shader
    pal_swap_reset();
    
    //Draw the shoe on front
    draw_sprite_ext(obj_kuriboshoe.sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,1);
}

//Otherwise, if the player is riding a yoshi
else if (global.mount == 1) {

    //Set Yoshi palette
    pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
    
    //Draw Yoshi
    if (obj_yoshi.mouthholder != noone)
        draw_sprite_ext(spr_yoshi_fm_jump, -1, round(x),round(y)+1,image_xscale,1,0,c_white,1);
    else
        draw_sprite_ext(spr_yoshi_jump, -1, round(x),round(y)+1,image_xscale,1,0,c_white,1);
        
    //Reset palette
    pal_swap_reset();
    
    //Draw the player
    switch (global.player) {
    
        //Mario
        case (0): player_draw_yoshi(scr_mario_ride(), 0, x, y, image_xscale); break;
    }    
}

//Otherwise, draw normally
else {

    //Draw the item behind the player if holding
    if (holding > 0) {
    
        //If the player is small
        if (global.powerup == cs_small) {
        
            if (sprite_get_xoffset(myitem) == sprite_get_width(myitem)/2)
                draw_sprite_ext(myitem,myframe,round(x)+(10*image_xscale),round(y),1,1,0,c_white,1);
            else
                draw_sprite_ext(myitem,myframe,round(x)-8+(10*image_xscale),round(y),1,1,0,c_white,1);
        }
        
        //Otherwise, if the player is not small
        else {
            
            if (sprite_get_xoffset(myitem) == sprite_get_width(myitem)/2)
                draw_sprite_ext(myitem,myframe,round(x)+(10*image_xscale),round(y)-4,1,1,0,c_white,1);
            else
                draw_sprite_ext(myitem,myframe,round(x)-8+(10*image_xscale),round(y)-4,1,1,0,c_white,1);        
        }
    }
    
    //Set the palette
    pal_swap_set(spr_palette_mario, isflashing);
    
    //Draw the player
    draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);
    
    //Reset the palette
    pal_swap_reset();
}

