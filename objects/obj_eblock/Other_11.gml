/// @description Turn no solid

//Destroy solid mask
with (mysolid) instance_destroy();

//Change the sprite
sprite_index = spr_eoutline;
image_speed = 0.15;

