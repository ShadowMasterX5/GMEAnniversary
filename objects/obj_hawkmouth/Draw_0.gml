/// @description Draw Hawkmouth

//If the hawkmouth is not opening or closing it's mouth
if (ready == 0)
|| (ready == 1)
|| (ready == 5) {

    //If the mouth is not opened
    if (ready == 0)
        draw_sprite_ext(sprite_index, 0, round(x), round(y), xscale, 1, 0, c_white, 1);
        
    //Otherwise, if the mouth is a bit opened
    else
        draw_sprite_ext(sprite_index, 1, round(x), round(y), xscale, 1, 0, c_white, 1);
}

//Otherwise, if the hawkmouth is opening or closing it's mouth
else {

    //Draw the inside frame
    draw_sprite_ext(sprite_index, 4, round(x), round(y), xscale, 1, 0, c_white, 1);
    
    //Draw top
    draw_sprite_ext(sprite_index, 2, round(x), round(y)-myy, xscale, 1, 0, c_white, 1);
    
    //Draw bottom
    draw_sprite_ext(sprite_index, 3, round(x), round(y)+myy, xscale, 1, 0, c_white, 1);
}

