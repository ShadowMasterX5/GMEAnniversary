/// @description PTooie

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Whether the object is swimming
swimming = false;

//Animate
image_speed = 0.125;

//Blow the ball
alarm[0] = 2;

//Start moving
alarm[10] = 2;

//Whether the object is blowing
ready = false;

//Distance between the ball and the ptooie
dist = bbox_top+16;

//Create the blown ball
myball = instance_create(x,bbox_top-24,obj_plantball);
with (myball) 
    parent = other.id;
