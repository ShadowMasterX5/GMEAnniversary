/// @description Draw the platform

//Draw the timer
if (time > 0) {

    //Set the font
    draw_set_font(global.font_interface);
    
    //Draw text
    draw_text(x+12,y+3,string_hash_to_newline(string(time)))
}

//Draw the platform
draw_sprite_ext(sprite_index,-1,round(x),round(y),1,1,0,c_white,1);

