/// @description A carryable source of light

//Inherit the parent event
event_inherited();

//Animate
image_speed = 0.15;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    //Create light
    mylight = instance_create(x,y,obj_light_st);
    
    //Set light parameters
    with (mylight) {
    
        target = other.id;
        sprite_index = spr_surface_light_large;
        image_blend = c_white;
        image_xscale = 0.35;
        image_yscale = 0.35;        
    }
}
else
    mylight = noone;

