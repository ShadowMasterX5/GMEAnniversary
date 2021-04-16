/// @description Warp Note Block

/*
**  This item uses creation code!
**
**  myroom = Destination Room
*/

//Default value
myroom = room_next(room);

//Animate
image_speed = 0.15;

//Whether this block can be hit
ready = 0;

//Palette
pal = 0;

//Leave trail
alarm[2] = 1;

//Make it solid
mysolid = instance_create(x,y,obj_solid);

/* */
/*  */
