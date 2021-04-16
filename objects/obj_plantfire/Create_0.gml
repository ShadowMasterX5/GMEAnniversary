/// @description A fireball spitten by a venus fire trap.

//Animate
image_speed = 0.2;

//Leave trail
alarm[0] = 1;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        sprite_index = spr_surface_light_small_b;
        target = other.id;
        if (other.sprite_index == spr_fireball)
            image_blend = c_orange;
    }
}

