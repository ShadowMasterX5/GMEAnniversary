/// @description Draw both keyhole and animation

//Draw the keyhole
if (ready < 2)
    draw_sprite(spr_keyhole, 0, x, y);
    
//Otherwise, if the animation has started
if (ready != 0) {

    //Draw the animation
    draw_sprite_ext(spr_keyhole_anim, 0, x+8, y+16, scale, scale, 0, c_white, 1);
    
    //If the player was riding a yoshi
    if (global.mount == 1) {
    
        //Draw yoshi and the player during the animation
        if (ready == 1)
        || (ready == 2) {
        
            //Set palette
            pal_swap_set(spr_palette_yoshi, global.mountcolour);
            
            //Draw Yoshi
            draw_sprite_ext(ms, mi, mx, my, md, 1, 0, c_white, fade);
            
            //Reset shader
            pal_swap_reset();
            
            //Draw the player
            draw_sprite_ext(scr_mario_ride(), 0, mx, my, md, 1, 0, c_white, fade);
        }
    } 
    
    //Otherwise, draw the player normally
    else {
        
        //Draw the player and the key during the animation
        if (ready == 1)
        || (ready == 2) {
        
            draw_sprite_ext(spr_key, 0, kx+8-10, ky, kd, 1, 0, c_white, fade);
            draw_sprite_ext(ms, mi, mx, my, md, 1, 0, c_white, fade);
        }        
    }   
}

