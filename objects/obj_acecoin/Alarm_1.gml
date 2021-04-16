/// @description Leave trail

//Repeat
alarm[1] = 4;

//Effect
with (instance_create(x-8+random(16),y-8+random(24),obj_smoke))
    sprite_index = spr_sparkle;

