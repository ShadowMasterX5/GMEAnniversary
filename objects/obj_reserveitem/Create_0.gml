/// @description Reserve item

//Sequence to display
//0: Small to big
//1: Big to small
//2: Powerup
//3: Powerdown
//4: Transform
sequence = 0;

//Play reserve sound
audio_play_sound(snd_drop, 0, false)

//Animate
image_speed = 0.15;

//Move down
vspeed = 1;

//Make it invisible
alarm[0] = 1;

//Item check
alarm[2] = 1;

//Sprite check
alarm[3] = 1;

