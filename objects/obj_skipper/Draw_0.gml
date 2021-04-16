/// @description Draw the disclaimer

//Draw only if the room is the disclaimer one
if (room == rm_disclaimer) {

    //Set the font
    draw_set_font(global.font_message);
    
    //Set the alignment
    draw_set_valign(fa_center);
    draw_set_halign(fa_center);
    
    //Set the colour
    draw_set_colour(c_white);
    
    //Draw the disclaimer
    draw_text_colour(__view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+156, string_hash_to_newline("This is an OPEN-SOURCE Mario engine#"
    + "developed by the GMETeam#"
    + " #"
    + "This engine is under the BSD-3 license#"
    + " #"
    + "Head to the official Discord server#"
    + "https://discord.gg/ZYJHMyX#"
    + " #"
    + "You can replace this screen with your logo#"
    + " #"
    + " #"
    + " #"
    + "- PRESS ANY KEY TO CONTINUE! -#"), c_white, c_white, c_white, c_white, 1);
    
    //Set the alignment
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}

