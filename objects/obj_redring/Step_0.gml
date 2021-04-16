/// @description Check if the player collected all coins and give him a prize for doing so.

//If the ring is active.
if (sprite_index == spr_redring_active) {

    //If there's not red coins.
    if (instance_number(obj_coin_r) == 0) {
    
        //Play 'Drop' sound
        audio_play_sound(snd_drop, 0, false);
        
        //Stop 'Timer' sounds
        audio_stop_sound(snd_timer_end);
        audio_stop_sound(snd_timer);
        
        //Create prize
        with (instance_create(0,0,obj_powerupprize)) {
        
            //If the player is small
            if (global.powerup == cs_small)            
                sprite_index = spr_mushroom;
            
            //Otherwise, if the player is big
            else if (global.powerup == cs_big)            
                sprite_index = constant_get_sprite(other.sprout);
            
            //Otherwise, get a life.
            else
                sprite_index = spr_1up;
        }
        
        //Destroy the ring
        instance_destroy();
    }
}

