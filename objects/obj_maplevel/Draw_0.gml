/// @description Draw the level panel.

//If there is more than 0 Star Coins needed to unlock the level.
if (block > 0) 
{
    //Do you have enough Star Coins?
    if (global.starcoins >= block) {
    
        draw_sprite(sprite_index,-1,round(x),round(y));
     
        //Remove the block.
        block = 0;   
    }
        
    else {
    
        draw_sprite_ext(sprite_index,-1,round(x),round(y),1,1,0,c_black,1);
        
        //Align the text
        draw_set_halign(fa_center);
        
        //Set the font
        draw_set_font(global.font_interface);
        
        //Set the alpha
        draw_set_alpha(1);
        
        //Draw the needed stars
        draw_text(x+8,y-10,string_hash_to_newline(string_format(block,0,0)));
        
        //Align the text again
        draw_set_halign(fa_left);
    }
}

else
    draw_sprite(sprite_index,-1,round(x),round(y));

