/// @description Spiketop

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Turn
turn = 0;

//Animate
image_speed = 0.1;

//Start moving
alarm[10] = 2;

//This prevents a bug that causes it to not work if it starts on a certain wall.
if (place_meeting(x,y+1,obj_solid))
    y++;
if (place_meeting(x-1,y,obj_solid) = false)
    direction = 180;

