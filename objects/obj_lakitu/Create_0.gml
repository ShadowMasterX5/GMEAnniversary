/// @description Green Lakitu

/*
**  This item uses creation code!
**
**  xmin = Minimum x coordinate where this enemy appears (Default: X)
**  xmax = Maximum x coordinate where this enemy appears (Default: Room Width)
*/

//Default values
xmin = x;
xmax = room_width;

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 0;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Movement
movement = instance_create(0,0,obj_lakitu_movement);

//Cloud animation
cloudanim = 0;

//Animate
image_speed = 0;

//Start throwing eggs
alarm[0] = 150;

//Prepare to enter into view
alarm[10] = 2;

/* */
/*  */
