/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Start flipping
instance_create(x,ystart,obj_flipblock_flip);
instance_destroy();
exit;

