/// @description Draw the player

//Draw the door background
if (depth == 2) then draw_sprite(spr_door_inside, 0, x-8, y);

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
        draw_sprite_ext(spr_yoshi_fm, 0, round(x),round(y)+1,image_xscale,1,0,c_white,1);
    else
        draw_sprite_ext(spr_yoshi, 0, round(x),round(y)+1,image_xscale,1,0,c_white,1);
        
    //Reset palette
    pal_swap_reset();
    
    //Draw the player
    player_draw_yoshi(scr_mario_ride(), 0, x, y, image_xscale);  
}

//Otherwise, draw the player normally
else {

    //If the player is holding a item, draw it
    if (holding > 0) {
    
        //If the player is small
        if (global.powerup == cs_small) {

            //If the offset of the item is at the middle
            if (sprite_get_xoffset(myitem) == sprite_get_width(myitem)/2)
                draw_sprite_ext(myitem,myframe,round(x),round(y),1,1,0,c_white,1);
            else
                draw_sprite_ext(myitem,myframe,round(x)-8,round(y),1,1,0,c_white,1);
        }
        
        //Otherwise
        else {

            //If the offset of the item is at the middle
            if (sprite_get_xoffset(myitem) == sprite_get_width(myitem)/2)
                draw_sprite_ext(myitem,myframe,round(x),round(y)-4,1,1,0,c_white,1);
            else
                draw_sprite_ext(myitem,myframe,round(x)-8,round(y)-4,1,1,0,c_white,1);       
        }
    }
    
    //Set up the palette
    pal_swap_set(spr_palette_mario, isflashing);
    
    //Draw the player
    draw_sprite_ext(sprite_index, 2, round(x), round(y)+1,1,1,0,c_white,1);
    
    //Reset the shader
    pal_swap_reset();
}

