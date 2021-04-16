/// @description Para-Beetle

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 3;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Is this enemy heavy?
isheavy = 2;

//Whether this object is carrying the player
ready = 0;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

//Create solid collision
mytop = instance_create(x,y,obj_enemytop);
with (mytop) {
    
    //Set the scale
    image_xscale = 1;
    image_yscale = 0.25;
}
