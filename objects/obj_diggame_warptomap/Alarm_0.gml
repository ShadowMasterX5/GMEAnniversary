/// @description Return to map

//If the chest exists
if (instance_exists(obj_diggame_chest)) {

    //If the chest has been opened, exit
    if (obj_diggame_chest.ready)
    exit;
    
    //Otherwise, stop minigame sound
    audio_stop_sound(bgm_minigame);
    
    //Clear it
    global.clear = 1;
    
    //Return to the map
    if (instance_number(obj_fadein) == 0) {
    
        with (instance_create(0,0,obj_fadein))
            target = rm_map;
    }
}

