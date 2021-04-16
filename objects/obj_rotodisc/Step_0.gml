/// @description Change the light colour if it exists

if (light != -1) {

    switch (image_index) {
    
        //Red
        case (0): with (light) image_blend = make_colour_rgb(214, 0, 33); break;
        
        //Brown
        case (1): with (light) image_blend = make_colour_rgb(148, 97, 99); break;
        
        //Yellow
        case (2): with (light) image_blend = make_colour_rgb(255, 211, 49); break;
        
        //Green
        case (3): with (light) image_blend = make_colour_rgb(165, 235, 33); break;
        
        //Gray
        case (4): with (light) image_blend = make_colour_rgb(189, 186, 189); break;
    }
}

