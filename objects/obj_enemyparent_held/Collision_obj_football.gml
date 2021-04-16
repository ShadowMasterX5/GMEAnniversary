/// @description Collision with football

//If the football is held
if (other.held == 1) 
&& (vulnerable < 99) {

    //Play 'Kick' sound
    audio_play_sound(snd_kick, 0, false);

    //Kill enemy
    event_user(0);    
    
    //Get 1000 points
    with (instance_create(x-8,y,obj_score)) event_user(5);
    
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
    
    //Destroy brick
    with (other) event_user(0);
}

//Otherwise
else {
    
    //If the enemy is vulnerable to fireballs
    if (vulnerable < 99) {
    
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
    
    //Destroy fireball
    if (vulnerable < 100)
        with (other) event_user(0);
}

