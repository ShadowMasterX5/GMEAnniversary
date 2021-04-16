/// @description Draw the player

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //Set the shader
    pal_swap_set(spr_palette_mario,obj_playerparent.isflashing)
    
    //If the player is pulling
    if (sprite_index == spr_mario_pull)
        draw_sprite_ext(spr_mario_pull,(global.powerup*2)+frame,round(x),round(y)+1,obj_playerparent.xscale,1,0,c_white,obj_playerparent.image_alpha);
        
    //Otherwise, draw the crouched down pose
    else
        draw_sprite_ext(scr_mario_duck(),1,round(x),round(y)+1,obj_playerparent.xscale,1,0,c_white,obj_playerparent.image_alpha);
    
    //Reset shader
    pal_swap_reset();
}

