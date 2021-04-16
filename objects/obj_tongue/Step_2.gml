/// @description Tongue logic

//If Mario and Yoshi exist
if (instance_exists(obj_playerparent)) 
&& (instance_exists(obj_yoshi)) {

    //Where the tongue should be drawn
    if (obj_yoshi.sprite_index == spr_yoshi_lick) {
    
        tongue1x = obj_yoshi.x-3+19*obj_playerparent.xscale;
        tongue2x = t2*obj_playerparent.xscale+tongue1x;
        tongue3x = t3*obj_playerparent.xscale+tongue1x;
        tongue4x = t4*obj_playerparent.xscale+tongue1x;
    }
    else {
    
        tongue1x = obj_yoshi.x-3+13*obj_playerparent.xscale;
        tongue2x = t2*obj_playerparent.xscale+tongue1x;
        tongue3x = t3*obj_playerparent.xscale+tongue1x;
        tongue4x = t4*obj_playerparent.xscale+tongue1x;     
    }

    //Actual tongue location
    x = round(t5*obj_playerparent.xscale+tongue1x);
    if (obj_yoshi.locked = 2)
        y = obj_yoshi.y+4;
    else
        y = obj_yoshi.y-7;

    //If Yoshi is moving his tongue out
    if (ready == 0) {

        //Increment tongue offset values
        if (t2 != 8)
            t2 += 4;
        if (t3 != 16)
            t3 += 4;
        if (t4 != 24)
            t4 += 4;
        if (t5 != 32)
            t5 += 4;

        //If the tongue is all the way out, pull it back in
        else if (ready != 1) {
        
            ready = 1;
            alarm[0] = 8;
        }
    }

    //If Yoshi is pulling back his tongue
    else if (ready == 2) {

        //Decrement tongue offset values
        if (t2 != 0)
            t2 -= 4;
        if (t3 != 0)
            t3 -= 4;
        if (t4 != 0)
            t4 -= 4;
        if (t5 != 0)
            t5 -= 4;

        //If the tongue is all the way in
        else {
        
            //Close Yoshi's mouth
            obj_yoshi.alarm[1] = 5;

            //If something was eaten
            if (hunger) {

                //If a powerup was eaten, place it in Yoshi
                if (powerup != noone) {
                
                    //Play 'Eat' sound
                    audio_play_sound(snd_yoshi_eat, 0, false);
                    
                    //Remember eaten powerup
                    obj_yoshi.powerup = powerup;
                    powerup = noone;
                }
                
                //Otherwise, if a berry was eaten.
                else if (berry != noone) {
                
                    //Play 'Eat' sound
                    audio_play_sound(snd_yoshi_eat, 0, false);
                    
                    //Remember eaten berry
                    obj_yoshi.berry = berry;
                    berry = noone;
                }
                
                //Otherwise, if a rotten shroom was eaten
                else if (obj_yoshi.mouthholder == obj_rotten) {
                
                    //Kill the player
                    with (obj_playerparent) {
                    
                        //If the player is invulnerable
                        if (!instance_exists(obj_invincibility)) {
                            
                            //Hurt the player                            
                            event_user(0);                                    
                        }
                    }
                }

                //If Yoshi's mouth is not full, swallow
                else if (obj_yoshi.mouthholder == noone) {
                               
                    //Play 'Eat' sound
                    audio_play_sound(snd_yoshi_eat, 0, false);
                    
                    //Play 'Coin' sound
                    audio_play_sound(snd_coin, 0, false);
                    
                    //Increment coins
                    global.coins++;
                }
            }

            //Destroy
            instance_destroy()
        }
    }
}

//Otherwise, stop licking and destroy
else {

    with (obj_yoshi) {
    
        licking = 0;
        locked = 0;
    }
    instance_destroy();
}

