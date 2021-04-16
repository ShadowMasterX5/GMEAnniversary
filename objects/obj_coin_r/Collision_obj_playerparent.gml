/// @description Collect the coin if visible

if (visible) {
    
    //Play 'Coin' sounds
    switch (instance_number(obj_coin_r)) {
    
        case (1): audio_play_sound(snd_redcoin8, 0, false); break;
        case (2): audio_play_sound(snd_redcoin7, 0, false); break;
        case (3): audio_play_sound(snd_redcoin6, 0, false); break;
        case (4): audio_play_sound(snd_redcoin5, 0, false); break;
        case (5): audio_play_sound(snd_redcoin4, 0, false); break;
        case (6): audio_play_sound(snd_redcoin3, 0, false); break;
        case (7): audio_play_sound(snd_redcoin2, 0, false); break;
        default: audio_play_sound(snd_redcoin, 0, false); break;
    }
    
    //Increment branch warp counter
    if (instance_exists(obj_warpbranch)) {
    
        with (obj_warpbranch) coins++;
    }
    
    //Increment coins
    global.coins++;
    
    //Get 20 points
    score += 20;
    
    //Create a sparkle
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_sparkle_c;
    
    //Increment coins
    global.redcoins++;
    with (instance_create(x+8,y,obj_score_coins)) {
    
        amount = global.redcoins;
        if (instance_number(obj_coin_r) == 1)
            alarm[0] = 12;
    }
    
    //Destroy
    instance_destroy();
}

