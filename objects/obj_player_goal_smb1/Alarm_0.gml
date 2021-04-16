/// @description Start walking to the goal castle

//Physics state
ready = 2;

//Play the flagpole music
audio_play_sound(bgm_sm1clear, 0, false);

//Jump off the flagpole
vspeed = -3;
y--;

//Move right 8 pixels
x += 8;

//Face right
image_xscale = 1;

