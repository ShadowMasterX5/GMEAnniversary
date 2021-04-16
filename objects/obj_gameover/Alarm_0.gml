/// @description Restart the game

//Stop stream
audio_stop_sound(bgm_gameover);

//Restart?
restart = 1;

//Reset all global variables
init_globals();

//Stop all audio
audio_stop_all();

//Go to disclaimer screen
if (instance_number(obj_fadein) == 0)    
    with (instance_create(0,0,obj_fadein)) target = rm_disclaimer;

