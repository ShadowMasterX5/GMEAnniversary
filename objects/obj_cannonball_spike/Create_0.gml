/// @description A cannonball shot from a cannon

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 1;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Animate
image_speed = 0.5;

//Set gravity
gravity = 0.1

//Set depth
alarm[0] = 2;

//Leave trail
alarm[1] = 2;

//Set motion
motion_set(80+random(round(20)),4+random(3))

