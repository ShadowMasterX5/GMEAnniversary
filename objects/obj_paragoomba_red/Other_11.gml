/// @description Make the goomba lose it's wings

//Create goomba
with (instance_create(x,y,obj_goomba_red)) hspeed = 0.5*sign(other.hspeed);

//Destroy
instance_destroy();

