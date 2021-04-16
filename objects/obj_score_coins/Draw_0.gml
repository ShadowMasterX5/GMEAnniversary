/// @description Draw text

//Set the colour
draw_set_colour(c_white);

//Set the font
draw_set_font(myfont);

//Align
draw_set_halign(fa_center);

//Set the shader if flasing
pal_swap_set(spr_palette_score, flash);

//Draw text
draw_text(round(x),round(y),string_hash_to_newline(string(amount)));
    
//End shader
pal_swap_reset();

//Realign
draw_set_halign(fa_left);

