/// @description Stop and create spin mask

//Create spin mask
myspin = instance_create(x,y+2,obj_spinmask);

//Stop animation
image_speed = 0;
image_index = 0;

//Go again
alarm[1] = 50;

//Increment speed
morespeed = 3;

