/// @description Get 'Big' player status

//Play 'Powerup' sound.
audio_play_sound(snd_powerup, 0, false);

//Get 1000 points
with (instance_create(x-8,y,obj_score)) event_user(5);

//If health mode is NOT active.
if (global.healthmode == false) {

    //If Mario is small.
    if (global.powerup == cs_small) {
    
        //Turn Mario into 'Super' Mario.
        global.powerup = cs_big;
        
        //Perform animation sequence
        with (instance_create(0,0,obj_player_transform))
            sequence = 0;
    }
    
    //Otherwise, get a reserve mushroom
    else {
    
        //If NO item is in reserve.
        if (global.reserve = cs_small)
            global.reserve = cs_big;
    }
}

//Otherwise, if health mode is active.
else if (global.healthmode == true) {
    
    //Heal 1 hp if not full
    health++;
    if (health > 4)
        health = 4;
}

//Destroy
instance_destroy();

