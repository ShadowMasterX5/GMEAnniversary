/// @description Draw the menu.

//Display the menu
if (mode != 0) {

    //Set up the font
    draw_set_font(global.font_interface);
    
    //Set the alpha
    draw_set_alpha(1);
    
    //Align the text to the top
    draw_set_valign(fa_left);
    
    //Get the length of the menu
    for (var i=1; i<=menu[page,0]; i++) {
        
        //Draw the text...
        if (i == current)
            draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+26, __view_get( e__VW.YView, 0 )+120+(12*(i-1)),menu[page,i], c_black, c_white, 1, 1, 0.5, 1);
        else
            draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+26, __view_get( e__VW.YView, 0 )+120+(12*(i-1)),menu[page,i], c_black, c_ltgray, 1, 1, 0.5, 1);
        
        //...and draw a arrow next to the selected option 
        if (i == current)
            draw_sprite_ext(spr_cursor, -1, __view_get( e__VW.XView, 0 )+10, __view_get( e__VW.YView, 0 )+120+(12*(i-1)), 1, 1, 0, c_white, 1);
    }
    
    //Reset text alignment
    draw_set_valign(fa_top);
}

//Align the text
draw_set_halign(fa_right);

//Set up the font
draw_set_font(global.font_interface);  

//Set the alpha
draw_set_alpha(1);

//Draw the text
draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw-4, __view_get( e__VW.YView, 0 )+4, string(cs_version), c_black, c_white, 1, 1, 0.5, 1);
draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw-4, __view_get( e__VW.YView, 0 )+global.gh-12,"2008-2020 GMETEAM / GREEN BARON GAMES", c_black, c_white, 1, 1, 0.5, 1);

//Re align the text
draw_set_halign(fa_left);

