/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Play 'Message' sound
audio_play_sound(snd_message, 0, false);

//Display a message       
with (instance_create(0,0,obj_message)) varmsg = other.varmsg;

//Delay making the block bumpable
alarm[2] = 24;

