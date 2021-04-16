/// @description Vase Cobrat

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

//Whether the object is on the vase
ready = -1;

//Whether the object is jumping
jumping = 0;

//Animate
image_speed = 0;

//Depth
depth = 10;

//Jump a bit
alarm[1] = 100;

//Create solid collision
mytop = instance_create(x,y-14,obj_enemytop);
with (mytop) {
    
    //Set the scale
    image_yscale = 0.25;
}

