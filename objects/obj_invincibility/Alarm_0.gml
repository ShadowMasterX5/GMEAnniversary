/// @description End invincibility

//Stop starman music
audio_stop_sound(bgm_starman);

//Play level music
obj_levelcontrol.alarm[0] = 2;

//Destroy
alarm[1] = 60;

