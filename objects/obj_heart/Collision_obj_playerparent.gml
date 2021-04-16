/// @description Turn Mario into Big Mario

//If the heart has not been collected
if (ready < 2) {
    
    //Get 100 points
    with (instance_create(x-8,y,obj_score)) event_user(1);
    
    //If health mode is NOT active.
    if (global.healthmode == false) {
    
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
        else {
        
            //Play 'Collect' sound
            audio_play_sound(snd_cherry, 0, false);
        }
    }
    
    //Otherwise, if health mode is active.
    else if (global.healthmode == true) {

        //Play 'Collect' sound
        audio_play_sound(snd_cherry, 0, false);
        
        //Increment health
        health++;
        if (health > 4)
            health = 4;
    }
    
    //Collect it
    ready = 2;
    
    //Stop if moving up
    if (vspeed < 0)
        vspeed = 0;
}


