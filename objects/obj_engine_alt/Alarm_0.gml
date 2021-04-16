/// @description Start engine

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    //Create a light
    light = instance_create(x,y,obj_light_st);
    
    //With the light
    with (light) {
    
        sprite_index = spr_surface_light_small_c;
        image_angle = other.image_angle;
        image_blend = c_orange;
    }
}

//Set the sprite.
sprite_index = spr_engine_st;

//Set the animation speed.
image_speed = 0.5;

//Make it visible.
visible = 1;

//Play a sound.
if (!outside_view())
&& (!audio_is_playing(snd_flames))
    audio_play_sound(snd_flames, 0, false);

