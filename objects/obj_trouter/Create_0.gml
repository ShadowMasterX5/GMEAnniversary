/// @description Trouter

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Whether the podoboo is jumping
ready = 0;

//Animate
image_speed = 0.125;

//Set the gravity.
gravity = 0.2;

//Create solid collision
mytop = instance_create(x,y-14,obj_enemytop);
with (mytop) {
    
    //Set the scale
    image_yscale = 0.25;
}

