/// @description Draw the player

//If the player is riding a yoshi
if (global.mount == 1) {
    
    //If the player is jumping
    if (vspeed != 0) {
    
        //Set Yoshi palette
        pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
        
        //If moving up, draw yoshi jumping
        if (vspeed < 0)
            draw_sprite_ext(spr_yoshi_jump, 0, round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);

        //Otherwise, draw yoshi falling
        else
            draw_sprite_ext(spr_yoshi_jump, 1, round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);        
            
        //Reset palette
        pal_swap_reset();
        
        //Draw the player
        player_draw_yoshi(scr_mario_ride(), 0, x, y+obj_yoshi.myy, image_xscale);
    }
    
    //Otherwise, if the player is not jumping
    else {
    
        //If the player is not moving horizontally
        if (hspeed == 0) {
            
            //Draw the player first
            player_draw_yoshi(scr_mario_clear(), 0, x, y-9+obj_yoshi.myy, image_xscale);               
            
            //Set Yoshi palette
            pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
            
            //Draw Yoshi
            if (obj_yoshi.mouthholder != noone)
                draw_sprite_ext(spr_yoshi_warp, 1, round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);
            else
                draw_sprite_ext(spr_yoshi_warp, 0, round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);
                
            //Reset palette
            pal_swap_reset();       
        }
    
        //Otherwise, if the player is moving horizontally
        else {
    
            //Set Yoshi palette
            pal_swap_set(spr_palette_yoshi, obj_yoshi.colour);
            
            //Draw Yoshi
            draw_sprite_ext(spr_yoshi, anim, round(x), round(y)+1, image_xscale, 1, 0, c_white, image_alpha);
                
            //Reset palette
            pal_swap_reset();
            
            //Draw the player
            player_draw_yoshi(scr_mario_ride(), 0, x, y+obj_yoshi.myy, image_xscale);
        }
    }
}

//Otherwise, draw normally
else
    draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);

