/// @description Clear the level and stop the music.

//Stop music
audio_stop_sound(bgm_pswitch);

//Clear it
global.clear = 1;

//Return to map
if (instance_number(obj_fadein) == 0) {

    //Create a fade in effect.
    with (instance_create(0,0,obj_fadein))
        target = rm_map;
}

