/// @description Turn into a pancake

//Create pancak'd enemy
with (instance_create(x,y,obj_stomped)) sprite_index = spr_koopa_sq;

//Destroy
instance_destroy();

