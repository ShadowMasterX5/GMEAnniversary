/// @description A tide, add it on your underwater stages.

/*
//  This item uses creation code.
//
//  push    = Leave it to true to push Mario when it's swimming inside.
//  poison  = Makes this water poisonous and insta-kills the player if touched.
//  myspd   = Movement speed of the tides
*/

//Whether this can push Mario.
push = false;
poison = false;
myspd = 0.25;

//Animate
image_speed = 0.075;

//Set depth
depth = -10;

//Make the tide rise/shrink
alarm[0] = 360;

//Create bubble effects
alarm[1] = 7;

//X position
xx = 0;

//Create a water surface
water = instance_create(x,y+4,obj_swim);
with (water) {

    image_xscale = room_width;
    image_yscale = room_height;
}

/* */
/*  */
