/// @description Angry Sun

/*
**  This item uses creation code!
**
**  xmin    = Minimum x coordinate where this enemy will go nuts (Default: X)
**  happy   = Turn this into a happy moon, eliminates all enemies on screen.
*/

//Default values
xmin = x;
happy = false;

//How vulnerable is this enemy to various items?
vulnerable = 2;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Whether this object went nuts
ready = 0;

//Movement object
movement = noone;

//Animate
image_speed = 0;

/* */
/*  */
