/// @description Auto-Bomb

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

//Whether the object is swimming
swimming = false;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

//Create rider
rider = instance_create(x,bbox_top-15,obj_autobomb_shyguy);

//Create solid collision
mytop = instance_create(x,y-12,obj_enemytop);
with (mytop)
    sprite_index = spr_sproutmask;

