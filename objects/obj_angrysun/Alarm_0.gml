/// @description Leave trail if this is a moon

if (happy == true) {

    with (instance_create(x-3+random(round(22)), y-3+random(round(22)), obj_smoke)) {
    
        sprite_index = spr_boltspark;
        image_speed = 0.1;
    }
}

//Repeat the process
alarm[0] = 4;

