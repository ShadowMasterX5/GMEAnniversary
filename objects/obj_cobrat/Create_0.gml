/// @description Cobrat

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 3;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Is this enemy heavy?
isheavy = 0;

//Whether the object is swimming
swimming = false;

//Whether the object can move
ready = 0;
ready2 = -1;

//Animate
image_speed = 0;

//Depth
depth = 10;

//Create solid collision
mytop = instance_create(x,y-14,obj_enemytop);
with (mytop) {
    
    //Set the scale
    image_yscale = 0.25;
}
