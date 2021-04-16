/// @description Leave a trail

//Create effect
with (instance_create(x-8+random(16),y+random(16),obj_smoke)) {

    image_speed = 0.1;
    sprite_index = spr_icespark;
}

//Repeat the process
alarm[0] = 8;

