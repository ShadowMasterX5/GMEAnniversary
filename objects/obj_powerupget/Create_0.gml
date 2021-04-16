/// @description You got a powerup from a Toad house.

//Play 'Chest Item' sound
audio_play_sound(snd_chestitem, 0, false);

//Do not animate
image_speed = 0;

//Check if ready
ready = 0;

//Alpha
alpha = 1;

//Whether to show the inventory
inventory = 0;
inv_y = 0;

//Set the vertical speed
vspeed = -3;

//Set the friction
friction = 0.05;

