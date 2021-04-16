/// @description Draw tides

//If the water is not poisonous
if (poison == false) {

    //Draw the top part
    draw_sprite_tiled_area_ext(sprite_index, -1, 0+xx, y, 0, y, room_width, y+47, c_white, image_alpha);
    
    //Set the alpha
    if (image_alpha > 0) {
    
        draw_set_alpha(image_alpha/2);
    }
    
    //Set the colour
    draw_set_colour(make_colour_rgb(24, 136, 200));
}

//Otherwise, if the water is poisonous
else {

    //Draw the top part
    draw_sprite_tiled_area_ext(spr_tides_poison, -1, 0+xx, y, 0, y, room_width, y+47, c_white, image_alpha);
    
    //Set the alpha
    if (image_alpha > 0) {
    
        draw_set_alpha(image_alpha);
    }
    
    //Set the colour
    draw_set_colour(make_colour_rgb(89, 49, 146));
}

//Draw a rectangle.
draw_rectangle(x, y+48, room_width, room_height, false);

//Reset the alpha
draw_set_alpha(1);

