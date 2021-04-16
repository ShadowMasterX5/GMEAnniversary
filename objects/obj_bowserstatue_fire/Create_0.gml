/// @description Bowser Statue fire

//Animate
image_speed = 0.2;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        image_blend = c_orange;
        sprite_index = spr_surface_light_small_b;
    }
}

