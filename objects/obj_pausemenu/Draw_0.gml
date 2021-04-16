/// @description Draw the menu.

//Set the shader
shader_set(shd_grayscale);
shader_set_uniform_f(uni_time, var_time_var);
shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
shader_set_uniform_f(uni_greyscale_fade, var_greyscale_fade);

//Set the colour
draw_set_colour(c_white);

//Draw the background
if (background_exists(back)) {
    
    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//Reset shader
shader_reset();

//Draw the actual border.
draw_sprite_ext(spr_pausemenu, 1, __view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh/2, image_xscale, image_yscale, 0, c_white, 1);

//Draw if the menu if fully scaled
if (image_xscale == 1) {

    //Align the text
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
    
    //Set the font
    draw_set_font(font)
    
    //Set the alpha
    draw_set_alpha(1)
    
    //Makes the word choice   
    var i, text;
    for (i = 0; i < 3; i++;) {
    
        //Set the text to draw
        text = string(menu[i]);
        
        //Draw depending of the option chosen
        if (choice != i)
            draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh/2-12+(i)*12, string(text), make_color_rgb(1,117,203), make_color_rgb(151,216,255), 1, 1, 1, 1);
        else
            draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+global.gw/2, __view_get( e__VW.YView, 0 )+global.gh/2-12+(i)*12,"{ " + string(text) + " }", make_color_rgb(1,117,203), c_white, 1, 1, 1, 1);
    }
    
    //Re-align the text
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

