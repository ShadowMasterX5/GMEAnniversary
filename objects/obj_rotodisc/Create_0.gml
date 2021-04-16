/// @description Rotodisc

//Animate
image_speed = 0.75;

//Leave a trail
alarm[0] = 2;

//Light
light = -1;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    //Create a light
    light = instance_create(x,y,obj_light_st);
    
    //With the light
    with (light) {
    
        target = other.id;
        image_blend = make_colour_rgb(214, 0, 33);
        sprite_index = spr_surface_light_small_b;
    }
}

