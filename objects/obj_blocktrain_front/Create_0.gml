/// @description Front block of the block train

//Do not animate
image_speed = 0;
image_index = 1;

//Length
length = 0;

//Direction
dir = 0;

//Allow creation of blocks
ready = 0;

//Create platform
instance_create(xstart,ystart,obj_blocktrain_middle);

