/// @description Begin playing the world map music

//Check the current world
switch (global.world) {

    //World 1
    case (1): mapmusic = bgm_map1; break;
    
    //World 2
    case (2): mapmusic = bgm_map2; break;
}

//Play the correct theme based on the current world
audio_play_sound(mapmusic, 0, true);

