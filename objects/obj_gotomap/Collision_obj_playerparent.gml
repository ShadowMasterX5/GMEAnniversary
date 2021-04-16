/// @description Warp to another room

//Stop music streams
audio_stop_all();

//Do special clear sequence
global.clear = 1;

//Remove checkpoints
global.checkpoint = noone;

//Fade in
if (instance_number(obj_fadein) == 0) {

    with (instance_create(0,0,obj_fadein)) 
        target = rm_map;
}

