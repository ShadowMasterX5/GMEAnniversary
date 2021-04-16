/// @description Freeze the player

//If the player is invulnerable
if (instance_exists(obj_invincibility)) {

    event_user(0);
    exit;
}

//Otherwise, if the player is riding a yoshi
else if (global.mount > 0) {

    with (other) event_user(0);
    event_user(0);
    exit;
}

//Otherwise, freeze
else {

    //If the player has not been frozen
    if (other.freezetime == 0) {
    
        //With the player
        with (other) {
    
            //Play 'Freeze' sound
            audio_play_sound(snd_freeze, 0, false);
            
            //Stop movement
            xspeed = 0;
            yspeed = 0;
            ygrav = 0;
            
            //Freeze
            freezetime = 60;
            
            //Disable controls
            disablecontrol = 1;
        }
    }
    
    //Otherwise, get hurt
    else if (other.freezetime > 0) {
    
        //With the player
        with (other) {
        
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
        
            //Get hurt
            event_user(0);
            
            //Break ice
            freezetime = 0;
            
            //Enable controls
            disablecontrol = false;            
        }
    }
}

//Destroy snow ball
event_user(0);

