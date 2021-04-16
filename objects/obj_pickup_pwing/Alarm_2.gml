/// @description Leave a trail

//Create effect
with (instance_create(x-4+random(8),y+random(8),obj_smoke)) {

    image_speed = 0.1;
    sprite_index = spr_icespark;
}

//Repeat the process
alarm[2] = 8;

