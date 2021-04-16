/// @description Collision with projectiles

//If the enemy is vulnerable to fireballs
if (vulnerable == 0) {

    //If the object is a fireball and enemies can be turn into coins
    if ((other.object_index == obj_fireball) && (global.enemy_to_coin == 1)) {
    
        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);
        
        //Turn into a coin
        with (instance_create(x, y, obj_blockcoin2)) {
        
            //Jump a bit
            vspeed = -4;
            y--;
            
            //Move in the opposite way the player is
            if (!instance_exists(obj_playerparent))
            || (obj_playerparent.x < x)
                hspeed = 0.5;
            else
                hspeed = -0.5;                    
        }
        
        //Destroy
        instance_destroy();
        
        //Create smoke effect
        instance_create(round(bbox_left+bbox_right)/2-8,round(bbox_top+bbox_bottom)/2-8,obj_smoke);
        
        //Destroy projectile
        with (other) event_user(0);
    }
    
    else {

        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);        
        
        //Kill the enemy
        event_user(0);
        
        //Destroy projectile
        with (other) event_user(0);
                
        //Get 200 points
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
            event_user(2);
    }
}

//Destroy fireball
if (vulnerable < 100)
    with (other) event_user(0);

