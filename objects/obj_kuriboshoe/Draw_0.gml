/// @description Draw the shoe

if (instance_exists(obj_playerparent)) {
    
    //Set the shader
    pal_swap_set(spr_palette_mario, obj_playerparent.isflashing);
    
    //Only draw if the player is not crouched down
    if (obj_playerparent.crouch == false) {
    
        //Draw the player inside the shoe
        switch (global.player) {
        
            //Mario
            case (0): draw_sprite_ext(spr_mario_shoe, global.powerup, round(x), round(y)-15+(movement.y), obj_playerparent.xscale, 1, 0, c_white, 1); break;
        }
    }
    
    //Reset shader
    pal_swap_reset();
    
    //Draw the shoe on front
    draw_sprite_ext(sprite_index,-1,round(x),round(y)+1+(movement.y),obj_playerparent.xscale,1,0,c_white,1);
}

