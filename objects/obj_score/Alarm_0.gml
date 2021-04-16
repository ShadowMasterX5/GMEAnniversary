/// @description Create sparkles on fade

if (fade > 0) {

    with (instance_create(x-16+random(32),y-12+random(16),obj_smoke)) {
    
        image_speed = 0.25;
        depth = -7;
        sprite_index = spr_boltspark;
    }
}
alarm[0] = 2;

