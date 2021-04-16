/// @description Set up a spinning card sprite.

with (instance_create(x,y,obj_goalcard_get)) {

    vspeed = -3;
    switch (other.image_index) {
    
        case (0): sprite_index = spr_goalcard_mush; break;
        case (1): sprite_index = spr_goalcard_flower; break;
        case (2): sprite_index = spr_goalcard_starman; break;
    }
}

