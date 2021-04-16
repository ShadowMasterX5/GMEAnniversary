/// @description Destroy

//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false)

//Create fire smoke
with (instance_create(x-8, y-4, obj_smoke)) sprite_index = spr_firesmoke;

//Create directional cinders
repeat (16) {

    with (instance_create(x, y+4, obj_smoke)) {
    
        motion_set(random(360), random_range(0.5, 1.5));
        depth = -7;
        image_speed = 0.125;
        sprite_index = spr_cinder;
    }
}

//Destroy
instance_destroy();

