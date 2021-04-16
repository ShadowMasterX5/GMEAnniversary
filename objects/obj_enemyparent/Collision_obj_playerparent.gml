/// @description Collision with the player

//If the player is invulnerable, exit
if (instance_exists(obj_invincibility))
exit;

//If the enemy is invulnerable to stomp or the player is invulnerable.
if (stomp != -1)
|| (other.invulnerable == -1) {

    //If the player is sliding down a slope
    if (other.sliding)
    && (vulnerable < 99) {

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
    
        //Kill the enemy
        event_user(0);        
        
        //Create 'Spinthump' effect
        with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
                
        //Increment hitcombo
        other.hitcombo++;   
    }
    
    //Otherwise, if the player is not sliding
    else {
    
        //If the player is above the enemy and moving down
        if (other.bbox_bottom < bbox_top-vspeed+5) {
    
            //If the player is spin jumping
            if (stomp != 3)
            && (stomp != 4)
            && ((other.stompstyle == 1) || (global.mount > 0)) {
    
                //If this enemy is not immune to spin jumps
                if (stomp == 0)
                || (stomp == 5)
                || ((stomp == 1) && (global.mount > 0)) {
                
                    //Create spin smoke effect
                    instance_create((bbox_left+bbox_right)/2-8,y,obj_spinsmoke);
                    
                    //Get points based on combo
                    if (other.hitcombo <= 6) //If the player did 6 or less consecutive stomps
                        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(2+obj_playerparent.hitcombo);
                    else {
                    
                        audio_play_sound(snd_1up, 0, false);
                        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) 
                            event_user(9);
                    }
                    
                    //Increment combo
                    other.hitcombo++;
                    
                    //Bounce against if riding or just stop
                    if (global.mount > 0) {
                    
                        //Bounce
                        with (other) event_user(1);
                        
                        //Create projectiles if the player is wearing a baburu or pentaro shoe
                        if (global.mount == 2) {
                        
                            //If this is a baburu shoe, create two fireballs
                            if (global.mountcolour = 1) {
                            
                                with (instance_create(x+12,y+8,obj_fireball)) hspeed = 1.5;
                                with (instance_create(x-12,y+8,obj_fireball)) hspeed = -1.5;
                            }

                            //Otherwise, if this is a pentaro shoe, create two ice balls
                            else if (global.mountcolour = 4) {
                                                        
                                with (instance_create(x+12,y+8,obj_iceball)) hspeed = 1.5;
                                with (instance_create(x-12,y+8,obj_iceball)) hspeed = -1.5;                                
                            }
                        }
                    }
                    else
                        other.vspeed = 0;
                        
                    //Destroy
                    instance_destroy();
                }
                
                //Otherwise, spin on spiky enemies
                else {
                
                    //Play 'Stomp' sound
                    audio_play_sound(snd_stomp, 0, false);
                    
                    //Create spin smoke
                    with (instance_create(other.x,other.bbox_bottom-8,obj_smoke)) sprite_index = spr_spinthump;
                    
                    //Bounce
                    with (other) event_user(1);
                }    
            }
    
            //Regular stomp
            else if ((stomp == 0) || (stomp == 4) || (stomp == 5))
            && (other.swimming == false) {
            
                //Play 'Stomp' sound
                audio_play_sound(snd_stomp, 0, false);
            
                //Prevent certain enemies from getting double stomped
                if (vspeed < 0) {
                
                    y = yprevious;
                    if (other.yspeed > 0)
                        other.y = other.yprevious;
                }
                
                //Bounce the player
                with (other) event_user(1);
                
                //If the enemy does give points
                if (stomp == 0) {
                
                    //Get points based on combo
                    if (other.hitcombo <= 6) //If the player did 6 or less consecutive stomps
                        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(2+obj_playerparent.hitcombo);
                    else {
                            
                        //If the combo is odd
                        if (other.hitcombo % 2 == 1)
                            with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(9);
                        
                        //Otherwise, if the combo is even
                        else if (other.hitcombo % 2 == 0)
                            with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(10);        
                    }
                    
                    //Increment combo
                    other.hitcombo++;
                }
                
                //Create spin smoke
                with (instance_create(other.x,other.bbox_bottom-8,obj_smoke)) sprite_index = spr_spinthump;
                
                //Stomp the enemy
                event_user(1);                
            }
        }
    
        //Otherwise, hurt the player
        else
            with (other) event_user(0);
    } 
}

