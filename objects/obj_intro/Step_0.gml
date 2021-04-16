/// @description Go to the map

if (!audio_is_playing(bgm_intro)) {

    if (instance_number(obj_fadein) == 0)
        with (instance_create(0,0,obj_fadein)) target = rm_map;
}

