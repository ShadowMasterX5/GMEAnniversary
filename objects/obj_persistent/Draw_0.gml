/// @description Draw background if the window has not focus

//If the background exists
if (background_exists(back)) {

    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//Display message
if (message != "")
    draw_text(2, 2, string_hash_to_newline(string(message)));

