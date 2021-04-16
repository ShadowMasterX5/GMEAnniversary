/// @description The level is about to end.

//Set the destination room.
target = noone;

//Take a screenshot.
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//The image is going to zoom out, so its initial size should be VERY big and shrink until it gets very small.
scale = 250;

//Set the surface
surf = surface_create(room_width,room_height);

//Set the surface colour
surf_colour = c_black;

