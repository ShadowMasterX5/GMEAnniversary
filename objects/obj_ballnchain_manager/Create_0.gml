/// @description Ball and Chain

/*
**  This item uses creation code!
**
**  clockwise   = Direction of the discs
**      1: Right
**      -1: Left
**  length      = Length of the chain
**  myspeed     = Speed of the giant maze
*/

//Default variables
clockwise = 1;
length = 2;
myspeed = 1.5;

//Move
x -= 8;
y -= 8;

//Distance
dist = 16;

//Angle
angle = 0;

//Create firebars
alarm[0] = 2;

//Make it solid
mysolid = instance_create(xstart,ystart,obj_solid);

/* */
/*  */
