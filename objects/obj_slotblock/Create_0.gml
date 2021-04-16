/// @description Slot Block

//Default variables
parent = noone;

//Do not animate
image_speed = 0;
image_index = 0;

//Animate
alarm[10] = 3;

//Whether this block can be hit
ready = 0;

//Make it solid
mysolid = instance_create(x,y,obj_solid);
    mysolid.image_xscale = 2;
    mysolid.image_yscale = 2;

