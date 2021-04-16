/// @description Draw dropdown

//If the player does exist
if (instance_exists(obj_playerparent)) {
    
    //Set the shader
    pal_swap_set(spr_palette_mario,obj_playerparent.isflashing)
    
    //Draw
    draw_sprite_ext(spr_mario_cat_attack,-1,round(x),round(y)+1,obj_playerparent.xscale,1,0,c_white,obj_playerparent.image_alpha);
    
    //Reset shader
    pal_swap_reset();
}

