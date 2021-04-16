/// @description A fireball spit by a panser

//Animate
image_speed = 0.3;

//Set the vertical speed
vspeed = -4;
gravity = 0.125;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        sprite_index = spr_surface_light_small_b;
        image_blend = c_orange;
    }
}

