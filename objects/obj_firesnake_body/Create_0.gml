/// @description Fire Snake body

//Does this object have a parent
parent = -1;

//How vulnerable is this enemy to various items?
vulnerable = 2;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Animate
image_speed = 0.2;

//Jump
jumping = 0;

//Jump downwards
ready = 0;

//Type of jump
type = 0;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        sprite_index = spr_surface_light_small_b;
        image_blend = c_orange;
    }
}

