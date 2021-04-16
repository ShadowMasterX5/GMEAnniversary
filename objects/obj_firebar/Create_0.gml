/// @description Fire from a firebar

//Do not animate.
image_speed = 0;
image_index = 0;

//Does mom exist?
mom = -1;

//Set the distance from the center.
length = 0;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        image_blend = c_orange;
        sprite_index = spr_surface_light_small_b;
    }
}

