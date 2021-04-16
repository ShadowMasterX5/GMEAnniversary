/// @description Play stream and get card id

//If card A is not set.
if (global.card[0] == -1) {

    //Play stream
    stream = audio_play_sound(bgm_sm3clear, 0, false);
    
    //Set the image for card A.
    global.card[0] = image_index;
}

//Otherwise, if card A is set and card B is not.
else if ((global.card[0] != -1) && (global.card[1] == -1)) {

    //Play stream
    stream = audio_play_sound(bgm_sm3clear, 0, 0);
    
    //Set the image for card B.
    global.card[1] = image_index;
}

//Otherwise, if both card A and card B are set and card C is not.
else if ((global.card[0] != -1) && (global.card[1] != -1) && (global.card[2] == -1)) {

    //Set the image for card C.
    global.card[2] = image_index;
    
    //Play special stream and get lives.
    event_user(1);
}

