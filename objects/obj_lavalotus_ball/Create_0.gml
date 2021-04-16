/// @description A fireball spitten by a lava lotus

//Animate
image_speed = 0.2;

//Blink
alarm[0] = 300;

//Destroy
alarm[1] = 420;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        sprite_index = spr_surface_light_small_b;
        image_blend = c_orange;
    }
}

