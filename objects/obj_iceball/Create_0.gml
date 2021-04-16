/// @description A iceball

//Play 'Iceball' sound
audio_play_sound(snd_iceball, 0, false);

//Set the vertical speed
vspeed = 0.5;

//Leave a trail
alarm[0] = 8;

//Destroy after a while
alarm[1] = 120;

//Check if swimming
swimming = false;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        sprite_index = spr_surface_light_small_b;
        image_blend = c_white;
    }
}

