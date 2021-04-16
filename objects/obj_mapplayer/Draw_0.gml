/// @description Draw the player

//Show arrows if stopped
if (speed == 0) 
&& (ready == 0)
&& (letsgo == 0)
    event_user(0);
    
//If the player completed a level or died in the map...
if (ready > 0)
    draw_sprite_ext(spr_mapmario_events,0,round(x)+8,round(y)-4,1,1,0,c_white,1);
    
//Otherwise
else {
    
    //If the player is riding a yoshi
    if (global.mount == 1) {
    
        //Set the palette for yoshi
        pal_swap_set(spr_palette_yoshi, global.mountcolour);
        
        //If the player decided the level
        if (image_index == 8) {
        
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))    
                draw_sprite_ext(spr_mapmario_yoshi_water,8,round(x)+8,round(y),xscale,1,0,c_white,1);
            else
                draw_sprite_ext(spr_mapmario_yoshi,8,round(x)+8,round(y)-4,xscale,1,0,c_white,1);
        }
    
        //If the player is climbing
        else if (image_index == 6)
            draw_sprite_ext(spr_mapmario_yoshi,image_index+frame,round(x)+8,round(y)-4,xscale,1,0,c_white,1);
        
        //Otherwise
        else {
        
            //If the player is in contact with water, draw him inside water
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                draw_sprite_ext(spr_mapmario_yoshi_water,image_index+frame,round(x)+8,round(y),xscale,1,0,c_white,1);
            
            //Otherwise
            else
                draw_sprite_ext(spr_mapmario_yoshi,image_index+frame,round(x)+8,round(y)-4,xscale,1,0,c_white,1);
        }
        
        //Reset palette
        pal_swap_reset();
    }
    
    //Otherwise, if the player is not riding a yoshi
    else {
        
        //If the player decided the level
        if (image_index == 8) {
        
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))    
                draw_sprite_ext(spr_mapmario_water,8,round(x)+8,round(y),xscale,1,0,c_white,1);
            else
                draw_sprite_ext(spr_mapmario,8,round(x)+8,round(y)-4,xscale,1,0,c_white,1);
        }
    
        //If the player is climbing
        else if (image_index == 6)
            draw_sprite_ext(spr_mapmario,image_index+frame,round(x)+8,round(y)-4,xscale,1,0,c_white,1);
        
        //Otherwise
        else {
        
            //If the player is in contact with water, draw him inside water
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                draw_sprite_ext(spr_mapmario_water,image_index+frame,round(x)+8,round(y),xscale,1,0,c_white,1);
            
            //Otherwise
            else
                draw_sprite_ext(spr_mapmario,image_index+frame,round(x)+8,round(y)-4,xscale,1,0,c_white,1);
        }    
    }
    
    //Show if the player has the p-meter
    if (global.pwing)
    && (speed == 0)
        draw_sprite_ext(spr_mapmario_p, 0, x+8, y-12, 1, 1, 0, c_white, 1);
}

