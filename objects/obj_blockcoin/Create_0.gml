/// @description A coin that came out from a block

//Increment branch warp counter
if (instance_exists(obj_warpbranch)) {

    with (obj_warpbranch) coins++;
}

//Increment coins
global.coins++;

//Animate
image_speed = 0.3;

//Go up
vspeed = -3;

//Gravity
gravity = 0.2;

//Play 'Coin' sound
audio_play_sound(snd_coin, 0, false);

