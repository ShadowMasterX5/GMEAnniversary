/// @description Collect the coin if it's visible

//Play 'Coin' sound
audio_play_sound(snd_coin, 0, false);

//Increment coins
global.coins++;

//Get 50 points
score += 50;

//Destroy
instance_destroy();

//Create sparkle effect
with (instance_create(x,y,obj_smoke))
    sprite_index = spr_sparkle_b;

