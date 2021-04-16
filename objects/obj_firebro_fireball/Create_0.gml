/// @description A fireball thrown by a fire bro

//Play 'Fireball' sound
audio_play_sound(snd_fireball, 0, false);

//Animate
image_speed = 0.15;

//Set the vertical speed
vspeed = 0.5;

//Leave a trail
alarm[0] = 4;

//Check if swimming
swimming = false;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        image_blend = c_orange;
        sprite_index = spr_surface_light_small_b;
    }
}

