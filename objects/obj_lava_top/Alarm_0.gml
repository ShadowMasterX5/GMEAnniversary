/// @description Create lava-cinder

instance_create(x+random_range(4, sprite_width-4), y, obj_lavaspark);
alarm[0] = 120+round(random_range(0,60));

