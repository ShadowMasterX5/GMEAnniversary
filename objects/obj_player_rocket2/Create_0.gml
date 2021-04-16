/// @description Warp to a new area using a rocket

//Play 'Rocket' sound
audio_play_sound(snd_rocket, 0, false);

//Animate
image_speed = 0.3;

//Set the vertical speed
vspeed = -0.25;

//Speed up
alarm[0] = 90;

//Shake
alarm[1] = 2;
port_x = 0;
port_y = 0;

//Is the player holding something?
holding = 0;

//Draw the item held
myitem = -1;
myframe = 0;

