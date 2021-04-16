/// @description Leave a trail

if (sprite_index == spr_snowball) {

    //Create effect
    with (instance_create(x-4+random(8),y+random(8),obj_smoke)) {
    
        image_speed = 0.1;
        sprite_index = spr_icespark;
    }
    
    //Repeat the process
    alarm[0] = 8;
}
else {

    //Create effect
    with (instance_create(x, y+4, obj_smoke)) {
    
        depth = -1;
        sprite_index = spr_cinder;
    }
    
    //Repeat the process
    alarm[0] = 2;
}

