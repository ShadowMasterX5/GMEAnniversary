/// @description The player when it's warping through a pipe

//Set up the initial sprite
sprite_index = scr_mario_spin();

//Animate it.
image_speed = 0.2;

//Set the depth
depth = 10;

//Don't stop warping yet
ready = 0;

//Give it time before he can stop
alarm[0] = 10;

//Default speed
speed = 1;

//Whether the player is being launched out of a cannon
cannon = 0;

//Set up the player top boundary.
boundary = -8;

//Is the player invincible?
isflashing = 0;
alarm[4] = 1;

//Is the player holding something?
holding = 0;

//Draw the item held
myitem = -1;
myframe = 0;

