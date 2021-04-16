/// @description Boo

//Default variables
trig = 0;
direct = 1;

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = choose(1,-1);

//Animate
image_speed = 0;

//Set up the frame
image_index = choose(0,2,4);
frame = 0;
alarm[0] = 7;

