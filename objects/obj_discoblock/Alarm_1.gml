/// @description Finish block bump

//Play 'Switch' sound
audio_play_sound(snd_switch, 0, false);

//Stop vertical movement
vspeed = 0;
y = ystart;

//Trigger special block events
event_user(1);

//Allow this block to be used again
ready = 0;

