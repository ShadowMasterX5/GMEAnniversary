/// @description The player is warping through a door

//Get the sprite
sprite_index = scr_mario_spin();

//Animate it
image_speed = 0;
image_index = 2;

//Change Mario's depth
alarm[0] = 27;

//Whether the player is flashing
isflashing = 0;
alarm[1] = 1;

//Is the player holding something?
holding = 0;

//Draw the item held
myitem = -1;
myframe = 0;

