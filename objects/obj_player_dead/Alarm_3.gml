/// @description Generate smoke

alarm[3] = 2;
with (instance_create(x+random_range(-8, 8), bbox_top, obj_smoke)) {

    sprite_index = spr_smoke_d;
    image_speed = 0.2;
    vspeed = random_range(-0.5,-1.5);
}

