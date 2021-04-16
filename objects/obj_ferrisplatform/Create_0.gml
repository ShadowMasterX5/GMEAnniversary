/// @description Single ferris platform

/*
//  This item uses creation code.
//
//  turn = Set the direction of the platforms.
//      1       =       Clockwise
//      -1      =       Counter-Clockwise
*/

//Default values
turn = 1;

//Make the instance solid
instance_create(x,y,obj_solid);

//Move 8 pixels downright
x += 8;
y += 8;

//Distance
size = 48;

//Platform speed
spd = 1.25;

//Platform angle
angle = 45;

//Create platforms
alarm[0] = 2;

//Activate platforms
active = false;

/* */
/*  */
