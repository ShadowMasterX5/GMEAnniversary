/// @description Flipper

//Do not animate
image_speed = 0;
image_index = 0;

//Whether the flipper can open
ready = 0;

//Make the flipper solid on contact
mysolid = instance_create(x,y,obj_solid);
    mysolid.image_xscale = 4;

