/// @description A cannonball shot from a cannon

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 0;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Animate
image_speed = 0;

//Create a smoke effect
instance_create(xstart-8,ystart-8,obj_smoke);
instance_create(xstart-16,ystart-16,obj_smoke);
instance_create(xstart,ystart-16,obj_smoke);
instance_create(xstart-16,ystart,obj_smoke);
instance_create(xstart,ystart,obj_smoke);

