/// @description Ceiling Podoboo

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Whether the podoboo is jumping
ready = 0;

//Animate
image_speed = 0.2;

//Set the gravity.
gravity = 0.2;
gravity_direction = 90;

//Create cinder effect when moving up
alarm[3] = 1;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        image_blend = c_orange;
        sprite_index = spr_surface_light_small_b;
    }
}

