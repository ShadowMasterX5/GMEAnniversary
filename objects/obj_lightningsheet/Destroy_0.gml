/// @description Create secondary lightning streak and reset fog

//Reset fog
d3d_set_fog(0, c_black, 0, 0);

//Create secondary lightning streak
instance_create(0,0,obj_lightningsheet2);

