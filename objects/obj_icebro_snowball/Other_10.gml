/// @description Destroy

//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false)

//Create directional cinders
repeat (32) {

    with (instance_create(x, y+4, obj_smoke)) {
    
        motion_set(random(360), random(1));
        depth = -7;
        image_speed = 0.15;
        sprite_index = spr_icespark;
    }
}

//Destroy
instance_destroy();

