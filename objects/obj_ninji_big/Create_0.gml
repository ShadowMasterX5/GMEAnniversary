/// @description Big Ninji

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 3;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Is this enemy heavy?
isheavy = 1;

//Whether the object is swimming
swimming = false;

//Whether the object is jumping
jumping = 0;

//Animate
image_speed = 0.125;

//Start jumping
alarm[1] = 15+random(round(30));

//Create solid collision
mytop = instance_create(x,y,obj_enemytop);
with (mytop) {
    
    //Set the scale
    image_xscale = 2;
    image_yscale = 0.25;
}

