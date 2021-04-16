/// @description Make the player interact with the item

//If the player is sliding
if (other.sliding) 
&& (vulnerable < 99) {
    
    //Kill the enemy
    event_user(0);  
    
    //Get points based on combo
    if (other.hitcombo == 0) { //200 points
    
        audio_play_sound(snd_kick2, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(2);
    }
    else if (other.hitcombo == 1) { //400 points
    
        audio_play_sound(snd_kick3, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(3);
    }
    else if (other.hitcombo == 2) { //800 points
    
        audio_play_sound(snd_kick4, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(4);
    }
    else if (other.hitcombo == 3) { //1000 points
    
        audio_play_sound(snd_kick5, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(5);
    }
    else if (other.hitcombo == 4) { //2000 points
    
        audio_play_sound(snd_kick6, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(6);
    }
    else if (other.hitcombo == 5) { //4000 points
    
        audio_play_sound(snd_kick7, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(7);
    }
    else if (other.hitcombo == 6) { //8000 points
    
        audio_play_sound(snd_kick8, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(8);
    }
    else if (other.hitcombo > 6) { //1-UP

        audio_play_sound(snd_kick8, 0, false);
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(9);
    }
    
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
    
    //Increment hitcombo
    other.hitcombo++;                  
}

//Otherwise, do default event
else if (kickme) {

    //If the item is not held
    if (!held) {
            
        //If the player can hold the item
        if (canhold()) && (!inwall) {
        
            //Make the player hold it
            other.holding = 2;
            
            //Hold
            held = 1;
            
            //Stop movement
            speed = 0;
            gravity = 0;
        }
        
        //Otherwise, kick it
        else {
        
            //If the player is above and it's riding either a yoshi or a kuribo shoe
            if ((global.mount > 0) || (other.stompstyle == 1)) {
                
                //Make the player bounce
                with (obj_playerparent) event_user(1);
                
                //Create spin smoke
                instance_create((bbox_left+bbox_right)/2-8,y,obj_spinsmoke);
                
                //Get points based on combo                
                if (other.hitcombo <= 6) { //If the player did less than 6 consecutive stomps
                
                    with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                        event_user(2+obj_playerparent.hitcombo);
                }

                //If the player did 7 or more consecutive stomps
                else if (other.hitcombo > 6) { //1-UP
                
                    //If the combo is odd
                    if (other.hitcombo % 2 == 1) {
                
                        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                            event_user(9);
                    }
                    
                    //Otherwise, if the combo is even
                    else if (other.hitcombo % 2 == 0) {

                        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                            event_user(10);        
                    }
                }
                
                //Increment hitcombo
                other.hitcombo++;
                
                //Destroy
                instance_destroy();                   
            }
            
            else if (vspeed >= 0) {
            
                //Play 'Kick' sound.
                audio_play_sound(snd_kick, 0, false);
                
                //Create hit
                with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
                
                //Make the player visually kick the item
                with (obj_playerparent) {
                
                    if (holding == 0)
                        event_user(4);
                }
                    
                //Create moving shell
                with (instance_create(x,y,obj_shell_kick)) {
                
                    //Set the same sprite
                    sprite_index = other.sprite_index;
                    
                    //If a koopa is inside
                    koopainside = other.koopainside;          
                    
                    //Set the horizontal speed
                    if (!instance_exists(obj_playerparent))
                    || (obj_playerparent.x < x) {
                    
                        hspeed = 2.7;
                        prevhspeed = 2.7;
                    }
                    else {
                    
                        hspeed = -2.7;
                        prevhspeed = -2.7;
                    }                                        
                }
                
                //Destroy
                instance_destroy();
            }
        }
    }
}

