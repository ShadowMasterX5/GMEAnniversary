/// @description A secret flagpole, clear the level with this

//Do not animate
image_speed = 0;
image_index = 1;

//Create flag
flag = instance_create(x+8,y+27,obj_flag);
with (flag)
    image_single = 1;

