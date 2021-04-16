/// @description Default hurt script

//If not invulnerable
if (invulnerable == false) {

    //If the player is riding something
    if (global.mount > 0) {
    
        //If the player is riding a shoe, destroy shoe
        if (global.mount == 2) {
            
            //With the shoe
            with (obj_kuriboshoe) {
            
                //Create flying shoe
                with (instance_create(x,y,obj_kuriboshoe_lost)) {
                
                    sprite_index = other.sprite_index;
                    image_xscale = obj_playerparent.xscale;
                    hspeed = obj_playerparent.xscale*-1;
                }
                
                //Destroy
                instance_destroy();
            }
        
            //Make Mario invincible for a while.
            invulnerable = true;
            alarm[0] = 90;
            alarm[1] = 1;                 
        }
        
        else {
        
            //If the player is riding a yoshi, scare yoshi
            if (global.mount == 1) {
    
                with (obj_yoshi) {
                
                    //Create a scared yoshi
                    with (instance_create(x,y,obj_yoshi_runaway)) colour = other.colour;
                    
                    //Destroy
                    instance_destroy();
                }
                
                //Make Mario invincible for a while.
                invulnerable = true;
                alarm[0] = 90;
                alarm[1] = 1;        
            }
        }
    }
    
    else {
    
        //If frozen, break ice
        if (freezetime > 0) {
        
            //Play 'Shatter' sound
            audio_play_sound(snd_shatter, 0, false);
            
            //Create sparklies
            repeat (32) {

                with (instance_create(bbox_left+sprite_width/2-4,bbox_top+sprite_height/2-4,obj_smoke)) {
                
                    //Sprite
                    sprite_index = spr_icespark;
                    
                    //Animate
                    image_speed = 0.1;
                    
                    //Motion
                    motion_set(random(360), random(1));
                }
            }
            
            //Break ice
            freezetime = 0;
            
            //Enable controls
            disablecontrol = false;             
        }
        
        //Otherwise
        else {

            //If health mode is active
            if (global.healthmode == true) {
            
                //If the player does have a powerup
                if (global.powerup > cs_big) {
                
                    //Play 'Warp' sound
                    audio_play_sound(snd_warp, 0, false);
                    
                    //Turn into 'Super'
                    global.powerup = cs_big;
                    
                    //Perform animation sequence
                    with (instance_create(0,0,obj_player_transform))
                        sequence = 3;
                }
                
                //Otherwise, if the player does not have a powerup
                else {
                
                    //If there's health left
                    if (health > 1) {
                    
                        //Play 'Warp' sound
                        audio_play_sound(snd_warp, 0, false);
                        
                        //Decrement health
                        health--;
                        
                        //Perform animation sequence
                        with (instance_create(0,0,obj_player_transform))
                            sequence = 3;
                    }
                    
                    //Otherwise if the HP is 1, die.
                    else if (health == 1) {
                    
                        //Set health
                        health = 0;
                        
                        //Perform death events
                        instance_create(x,y,obj_player_dead);
                        instance_destroy();
                        exit;     
                    }
                }
            }
            
            //Otherwise, if health mode is not enabled
            else if (global.healthmode == false) {
            
                //If the player has a higher grade powerup
                if (global.powerup > cs_big) {
                
                    //Play 'Warp' sound
                    audio_play_sound(snd_warp, 0, false);
            
                    //Turn the player into 'Super'.
                    global.powerup = cs_big;
                    
                    //Perform animation sequence
                    with (instance_create(0,0,obj_player_transform))
                        sequence = 3;    
                }
                
                //Otherwise, turn into small
                else if (global.powerup == cs_big) {
                
                    //Play 'Warp' sound
                    audio_play_sound(snd_warp, 0, false);
                    
                    //Turn the player into 'Super'.
                    global.powerup = cs_small;
                    
                    //Drop reserve item
                    with (obj_levelcontrol) {
                    
                        if (global.reserve > cs_small)
                        && (global.reservedrop == true)
                            event_user(1);
                    }
                    
                    //Perform animation sequence
                    with (instance_create(0,0,obj_player_transform))
                        sequence = 1;        
                }
                
                //Otherwise, kill the player
                else {
                  
                    instance_create(x,y,obj_player_dead);
                    instance_destroy();
                    exit;     
                }
            }
        }
    }
    
    //Become invulnerable
    invulnerable = 1;
    
    //Become vulnerable
    alarm[0] = 90;
    alarm[1] = 1;
}

