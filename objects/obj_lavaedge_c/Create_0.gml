/// @description Lava

//Do not animate
image_speed = 0;
image_index = 0;

//Frame
frame = 1;

//Collision
mycol = obj_semisolid;
instance_create(x,y,mycol);
instance_create(x,y,obj_solid);

