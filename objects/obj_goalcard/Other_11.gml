/// @description Play special stream and award lives.

//Check up if cards B and C are the same as card A.
if ((global.card[0] == global.card[1]) && (global.card[0] == global.card[2])) {

    //If all three cards are mushrooms.
    if (global.card[0] == 0) {
    
        //Play stream
        stream = audio_play_sound(bgm_sm3clear_c, 0, false);
        
        //Set the card type
        cardtype = 1;
        
        //Get extra lives
        alarm[1] = 120;
    }
    
    //Otherwise, if all three cards are fire flowers.
    else if (global.card[0] == 1) {
    
        //Play stream
        stream = audio_play_sound(bgm_sm3clear_c, 0, false);
        
        //Set the card type
        cardtype = 2;
        
        //Get extra lives
        alarm[1] = 120;
    }
    
    //Otherwise, if all three cards are starmen.
    else if (global.card[0] == 2) {
    
        //Play stream
        stream = audio_play_sound(bgm_sm3clear_c, 0, false);
        
        //Set the card type
        cardtype = 3;
        
        //Get extra lives
        alarm[1] = 120;
    }
}

//Otherwise, if all cards does not match.
else {

    //Play stream
    stream = audio_play_sound(bgm_sm3clear_b, 0, false);
    
    //Set the card type
    cardtype = 0;
    
    //Get extra lives
    alarm[1] = 120;
}

