/// @description Back block of the block train

//Do not animate
image_speed = 0;
image_index = 1;

//Direction
dir = 0;

//Allow creation of blocks
ready = 0;

//Parent
parent = noone;

//Create platform
instance_create(xstart,ystart,obj_blocktrain_killer);

