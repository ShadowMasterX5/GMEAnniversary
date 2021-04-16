/// @description Change powerup

//If the reserve item is a mushroom
if (sprite_index == spr_mushroom) {

    //If Mario is small.
    if (global.powerup == cs_small) {
    
        //Play 'Powerup' sound.
        audio_play_sound(snd_powerup, 0, false);
    
        //Turn Mario into 'Super' Mario.
        global.powerup = cs_big;
        
        //Perform animation sequence
        with (instance_create(0,0,obj_player_transform))
            sequence = 0;
    }
    
    //Otherwise, get a reserve mushroom
    else {
    
        //Play 'Powerup' sound.
        audio_play_sound(snd_reserve, 0, false);
    
        //If NO item is in reserve.
        if (global.reserve == cs_small)
            global.reserve = cs_big;
    }
}
else {

    //If Mario is big and there's NOT an item on reserve.
    if (global.powerup == cs_big) 
    && (global.reserve == cs_small) { 
    
        //If health mode is NOT enabled, save a mushroom in the reserve box.
        if (global.healthmode == false)
            global.reserve = cs_big;
    }
    
    //Otherwise, if Mario does have a powerup.
    else if (global.powerup > cs_big) {
    
        //Set the previous powerup as a reserve item
        global.reserve = global.powerup;
    }
    
    //If Mario is NOT Fire Mario.
    if (global.powerup != sprite_get_constant(sprite_index)) {
    
        //Turn Mario into Fire Mario.
        global.powerup = sprite_get_constant(sprite_index);
        
        //Perform animation sequence and play sound
        with (instance_create(0,0,obj_player_transform)) {
        
            sequence = other.sequence;
            if (other.sequence != 4)
                audio_play_sound(snd_powerup, 0, false);
            else
                audio_play_sound(snd_transform, 0, false);
        }
    }
    else {
    
        //Play 'Powerup' sound
        audio_play_sound(snd_reserve, 0, false);
    }    
}

//Destroy
instance_destroy();

