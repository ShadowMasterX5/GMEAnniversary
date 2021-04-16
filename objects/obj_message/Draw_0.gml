/// @description Display the message box

//Draw the screenshot if it exists
if (background_exists(back)) {

    //Disable alpha blending
    draw_enable_alphablend(0);
    
    //Draw screenshot
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending
    draw_enable_alphablend(1);
}

//Draw the message box
draw_sprite_ext(spr_messagebox,0,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-128,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-180,1,1,0,c_white,1);

//If the text should be displayed
if (showing) {   
    
    //Increment the number of letters that should be displayed
    if (a < string_length(text)) 
        a++;
    
    //Set the font
    draw_set_font(font); 

    //Draw the text up to the number of letters that should be displayed
    draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-120,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-172,string_copy(text,1,a),make_color_rgb(1,117,203),c_white,1,1,1,1);
}

