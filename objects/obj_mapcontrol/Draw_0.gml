/// @description Draw HUD

//Draw border
draw_sprite_ext(spr_mapborder, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 1);

//Set the font
draw_set_font(global.font_interface);

//Draw the player
if ((showcase == 0) || (inventory == 1)) {

    //Set the palette
    pal_swap_set(spr_palette_mario, isflashing);
    
    //Draw the player
    draw_sprite_ext(scr_mario_walk(), anim*2, __view_get( e__VW.XView, 0 )+32, __view_get( e__VW.YView, 0 )+16, 1, 1, 0, c_white, 1);
    
    //Reset the palette
    pal_swap_reset();
    
    //Set the colour
    draw_set_colour(c_white);
    
    //Draw lives
    draw_text(__view_get( e__VW.XView, 0 )+40, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline("* " + string_format(lives,2,0)));
}

//Draw the total amount of Star Coins
else if (showcase == 1) {
    
    //Draw the player
    draw_sprite_ext(spr_hud_starcoin_get, 0, __view_get( e__VW.XView, 0 )+24, __view_get( e__VW.YView, 0 )+16, 1, 1, 0, c_white, 1);
    
    //Set the colour
    draw_set_colour(c_white);
    
    //Draw amount of coins collected
    draw_text(__view_get( e__VW.XView, 0 )+40, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline("* " + string_format(global.starcoins,3,0) + "/" + string_format(global.levelmax*3,3,0)));
}

//Draw levelname
if (levelname != "") {

    //Draw the current levelname
    draw_text(__view_get( e__VW.XView, 0 )+120, __view_get( e__VW.YView, 0 )+24, string_hash_to_newline(string(levelname)));
    
    //Draw the coins collected in the level
    if (levelid != -1) {
    
        //Draw the coin spot
        draw_sprite_ext(spr_hud_starcoin, 0, __view_get( e__VW.XView, 0 )+120, __view_get( e__VW.YView, 0 )+4, 1, 1, 0, c_white, 1);
    
        //Draw the coins
        for (var i = 0; i < 3; i++) {
        
            for (var j = 0; j < global.levelmax; j++) {
                
                if (ds_map_find_value(global.sc[i],levelid) > 0) {
                
                    if (ds_map_find_value(global.sc[i],levelid) == 2)
                        draw_sprite_ext(spr_hud_starcoin_get, anim*1.5, __view_get( e__VW.XView, 0 )+120+(17*i), __view_get( e__VW.YView, 0 )+4, 1, 1, 0, c_white, 1);
                    else
                        draw_sprite_ext(spr_hud_starcoin_get, 0, __view_get( e__VW.XView, 0 )+120+(17*i), __view_get( e__VW.YView, 0 )+4, 1, 1, 0, c_white, 1);
                }
            }
        }
    }
}

//Draw the inventory if showing
if (inv_y > 0) {

    //Draw inventory box
    draw_sprite_ext(spr_mapinventory, 0, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-inv_y, 1, 1, 0, c_white, 1);
    
    //Draw the items and the cursor
    for (var i = 1; i <= global.inventory[0]; i++) {
        
        //Draw items in inventory
        draw_sprite_ext(constant_get_sprite(global.inventory[i]), 0, __view_get( e__VW.XView, 0 )+83+(i-1)*20, __view_get( e__VW.YView, 0 )+(224-inv_y), 1, 1, 0, c_white, 1);
        
        //Set the position of the box
        if (boxselection == i)
            draw_sprite_ext(spr_mapinventory_selector, anim, __view_get( e__VW.XView, 0 )+75+(i-1)*20, __view_get( e__VW.YView, 0 )+(224-inv_y), 1, 1, 0, c_white, 1);
        
    }
}

