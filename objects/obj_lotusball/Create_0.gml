/// @description A fireball spit by a lotus ball

//Animate
image_speed = 0.2;

//Enable gravity
ready = 0;
alarm[0] = 100;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        sprite_index = spr_surface_light_small_b;
        image_blend = c_orange;
    }
}

