/// @description Make the background flash

//Set the color
draw_set_colour(c_white);

//Set the alpha
draw_set_alpha(alpha);

//Draw rectangle
draw_rectangle(0,0,room_width,room_height,false);

//Set default alpha
draw_set_alpha(1);

