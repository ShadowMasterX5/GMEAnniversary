/// @description Collect the coin

//Play 'Coin' sound
audio_play_sound(snd_coin, 0, false);

//Get points based on coins collected
with (instance_create(x-8,y,obj_score)) {

    if (global.silvercoins < 8)
        event_user(3+global.silvercoins);
    else 
        event_user(11);
}

//Increment branch warp counter
if (instance_exists(obj_warpbranch)) {

    with (obj_warpbranch) coins++;
}

//Increment coins
global.coins++;

//Increment silver coins
global.silvercoins++;

//Destroy
instance_destroy();

//Create sparkle effect
with (instance_create(x-8,y,obj_smoke))
    sprite_index = spr_sparkle;

