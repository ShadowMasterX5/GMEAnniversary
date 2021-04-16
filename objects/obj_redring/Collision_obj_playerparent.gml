/// @description Activate the coins

//If the ring has not been activated.
if (sprite_index != spr_redring_active) {

    //Play 'Ring' and 'Timer' sound
    audio_play_sound(snd_ring, 0, false);
    audio_play_sound(snd_timer, 0, true);
    
    //Restart red coins
    global.redcoins = 0;

    //Make the coins visible            
    with (obj_coin_r) {
    
        //Check if the ring id's match
        if (ringid == other.ringid) {
        
            visible = true;    
        }
    }
    
    //Countdown
    alarm[0] = 720;
    
    //Destroy all not collected coins
    alarm[1] = 900;
    
    //Change the sprite
    sprite_index = spr_redring_active;
    image_index = 0;
    
    //Prevent the coins from re-appearing
    ds_map_add(global.redrings,id,1);
}

