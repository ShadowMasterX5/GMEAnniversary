/// @description Jumping Dolphin

//How vulnerable is this enemy to various items?
vulnerable = 100;

//How vulnerable is this enemy to the player?
stomp = 3;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Is this enemy heavy?
isheavy = 2;

//Gravity
gravity = 0.1;

//Animate
image_speed = 0.25;

//Create solid collision
mytop = instance_create(x,y,obj_semisolid);
with (mytop) {

    //Set the sprite
    sprite_index = spr_sproutmask;
    
    //Set the scale
    image_yscale = 0.25;
}

