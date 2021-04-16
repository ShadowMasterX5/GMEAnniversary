/// @description It's toad, it's going to give you a item.

//Do not animate
image_speed = 0;
image_index = 0;

//Display message
alarm[0] = 30;

//Play stream
alarm[1] = 1;

//Whether to kick the player out
ready = 0;

//Do not show Mario Start!
global.mariostart = 1;

//Create controller object
if (!instance_exists(obj_levelcontrol))
    instance_create(0,0,obj_levelcontrol);

