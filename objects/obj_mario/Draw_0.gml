/// @description Draw Mario

//Draw the player frozen
if (freezetime > 0) {

    //Set shader
    pal_swap_set(spr_palette_mario, 7);

    //Draw the player first
    draw_sprite_player(sprite_index, -1, round(x), round(y)+1, xscale, 1, 0, c_white, image_alpha, 0);
    
    //End shader
    pal_swap_reset();
}

//Otherwise, draw normally
else if (freezetime == 0) {

    //Set the shader
    pal_swap_set(spr_palette_mario, isflashing);
    
    //If Mario is small
    if (global.powerup == cs_small) {
    
        //If Mario is doing a somersault
        if (sprite_index == scr_mario_somersault())
            draw_sprite_player(scr_mario_somersault(),-1,round(x)+shake,round(y)+8,xscale,1,angle,c_white,image_alpha,0); 
            
        //Otherwise
        else
            draw_sprite_player(sprite_index,-1,round(x)+shake,round(y)+1,xscale,1,angle,c_white,image_alpha,0); 
        
    }
    else {
    
        //Draw player
        draw_sprite_player(sprite_index,-1,round(x)+shake,round(y)+1,xscale,1,angle,c_white,image_alpha,0);        
    }
    
    //End shader
    pal_swap_reset();
    
    //Draw a tornado if spinning down with the propeller suit
    if (global.powerup == cs_propeller)
    && (stompstyle == 1)
        draw_sprite_ext(spr_tornado,-1,round(x),round(y)+1,1,1,0,c_white,0.5);
}

