/// @description Leave a trail

with (instance_create(bbox_left+random(sprite_width),bbox_top+random(sprite_height),obj_smoke)) {

    sprite_index = spr_icespark;
    image_speed = 0.1;
}
alarm[2] = 4;

