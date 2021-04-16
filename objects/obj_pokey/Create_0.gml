/// @description Pokey

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Whether the object is swimming
swimming = false;

//Animate
image_speed = 0;

//Start moving
alarm[10] = 2;

//Remember enemies below.
if (position_meeting(x,bbox_bottom+8,obj_pokey)) {

    mebelow = collision_point(x,bbox_bottom+8,obj_pokey,0,0);
    alarm[0] = 10;
}
 
//If there's not enemies below, note that and start walking towards mario.
else {

    mebelow = noone;
    alarm[10] = 2;
}

//Top
a = -14;
alarm[9] = 2;

//Offset values
offset = 0;
offsetnext = 0;
offsetxscale = 1;

