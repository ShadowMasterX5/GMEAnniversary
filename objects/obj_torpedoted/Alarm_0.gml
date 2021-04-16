/// @description Leave a bubble trail

//Repeat
alarm[0] = 4;

//If facing right...
if (xscale > 0) {

    with (instance_create(x-16, y+random_range(4, 12), obj_smoke)) {
    
        image_speed = 0.15;
        sprite_index = spr_torpedobubble;
    }
}

//Otherwise, if facing left...
else if (xscale < 0) {

    with (instance_create(x+16, y+random_range(4, 12), obj_smoke)) {
    
        image_speed = 0.15;
        sprite_index = spr_torpedobubble;
    }
}

