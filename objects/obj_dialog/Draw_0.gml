/// @description Display the message box

//Animate dialog cursors
anim2 += 0.1;

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
draw_sprite_ext(spr_dialog,0,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-144,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,1,1,0,c_white,1);

//If the text should be displayed
if (showing) {   
    
    //Increment the number of letters that should be displayed
    if (a < string_length(text))    
        a++;
    
    //Set the font
    draw_set_font(font); 

    //Draw the text up to the number of letters that should be displayed
    draw_text_colour_shadowed(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-96,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-56,string_copy(text,1,a),make_color_rgb(1,117,203),c_white,1,1,1,1);
    
    //Draw mugshot if exists
    if (mugshot != noone) {
    
        //Draw the mugshot
        draw_sprite_ext(mugshot,anim,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-140,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,1,1,0,c_white,1);
        
        //Animate the mugshot
        if (a < string_length(text))       
            anim += 0.125;
        else
            anim = 0;
    }
    
    //Draw continue / finish arrow.
    if (a >= string_length(text)) {
    
        if (newtext = "")
            draw_sprite_ext(spr_dialog_end,anim2,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+128,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,1,1,0,c_white,1);
        else
            draw_sprite_ext(spr_dialog_continue,anim2,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+128,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-32,1,1,0,c_white,1);
    }
}

