/// @description Draw player and item

//If the player is inside a kuribo shoe
if (global.mount == 2) {
    
    //Set the shader
    pal_swap_set(spr_palette_mario, isflashing);
    
    //Draw the player inside the shoe
    draw_sprite_ext(spr_mario_shoe, global.powerup, round(x), round(y)-15, image_xscale, 1, 0, c_white, 1);
    
    //Reset shader
    pal_swap_reset();
    
    //Draw the shoe on front
    draw_sprite_ext(obj_kuriboshoe.sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,1);
}

//Otherwise, if the player is riding a yoshi
else if (global.mount == 1) {

    //If the player is in diagonal cannon mode
    if (cannon == 2) {

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
        player_draw_yoshi(scr_mario_ride(), 1, x, y, image_xscale);
    }
    else {

        //If the player is not moving vertically
        if (obj_player_warp.vspeed == 0) {

            //Set Yoshi palette
            pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
            
            //Draw Yoshi
            if (obj_yoshi.mouthholder != noone)
                draw_sprite_ext(spr_yoshi_fm, -1, round(x),round(y)+1,image_xscale,1,0,c_white,1);
            else
                draw_sprite_ext(spr_yoshi, -1, round(x),round(y)+1,image_xscale,1,0,c_white,1);
                
            //Reset palette
            pal_swap_reset();
            
            //Draw the player
            player_draw_yoshi(scr_mario_ride(), 1, x, y-3, image_xscale);
        }
        
        //Otherwise, if the player is moving vertically
        else if (obj_player_warp.vspeed != 0) {
            
            //Draw the player first
            player_draw_yoshi(scr_mario_spin(), 0, x, y-9, image_xscale);               
            
            //Set Yoshi palette
            pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
            
            //Draw Yoshi
            if (obj_yoshi.mouthholder != noone)
                draw_sprite_ext(spr_yoshi_warp, 1, round(x),round(y)+1,image_xscale,1,0,c_white,1);
            else
                draw_sprite_ext(spr_yoshi_warp, 0, round(x),round(y)+1,image_xscale,1,0,c_white,1);
                
            //Reset palette
            pal_swap_reset();       
        }
    }
}

//Otherwise, draw it normally
else {

    //Draw the item behind the player if moving horizontally
    if ((holding > 0) && (vspeed == 0)) {
    
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
    
    //Draw the item in front of the player if moving vertically
    if ((holding > 0) && (vspeed != 0)) {
    
        //If the player is small
        if (global.powerup == cs_small) {
            
            if (sprite_get_xoffset(myitem) == sprite_get_width(myitem)/2)
                draw_sprite_ext(myitem,myframe,round(x),round(y),1,1,0,c_white,1);
            else
                draw_sprite_ext(myitem,myframe,round(x)-8,round(y),1,1,0,c_white,1);
        }
        
        //Otherwise, if the player is not small
        else {
            
            if (sprite_get_xoffset(myitem) == sprite_get_width(myitem)/2)
                draw_sprite_ext(myitem,myframe,round(x),round(y)-4,1,1,0,c_white,1);
            else
                draw_sprite_ext(myitem,myframe,round(x)-8,round(y)-4,1,1,0,c_white,1);    
        }
    }
}

