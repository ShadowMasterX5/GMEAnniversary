/// @description Make the goomba lose it's wings

//Create galoomba
with (instance_create(x,y,obj_galoomba)) hspeed = 0.5*sign(other.hspeed);

//Destroy
instance_destroy();

