/// @description Leave a trail

alarm[0] = 1;
with (instance_create(x-(12*sign(hspeed)),y-8+random_range(-4,4),obj_smoke))
    sprite_index = spr_smoke_c;

