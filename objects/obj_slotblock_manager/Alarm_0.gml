/// @description Give out prizes

//If the game is not ready to end
if (ready == 1) {

    //Consolation prize
    if (award == -1) {
    
        //Play 'Scatter' sound
        audio_play_sound(snd_scatter, 0, false);
        
        //Create smoke
        instance_create(184,160,obj_smoke);
    
        //Create 10 coins
        repeat (10) {
        
            with (instance_create(192,158,obj_blockcoin2)) {
            
                hspeed = random_range(1,-1);
                vspeed = random_range(-2,-6)
            }
        }
        
        //Allow exit
        ready = 2;
        
        //Check up for items
        alarm[0] = 120;
    }
    
    //Award extra lives
    else {
    
        //Check for awards
        if (award > 0) {
    
            //Play 'Sprout' sound
            audio_play_sound(snd_sprout, 0, false);
            
            //Create smoke
            instance_create(184,168,obj_smoke);
            
            //Create 1-UP
            with (instance_create(192,168,obj_1up)) {
            
                permission = 1;
                vspeed = -6;
            }
            
            //Decrement awards
            award--;
            
            //Repeat the process
            alarm[0] = 60;
        }
        else {
        
            //Allow exit
            ready = 2;
            
            //Check up for items
            alarm[0] = 120;
        }
    }
}

//Otherwise, if the game is ready to end wait until all items are obtained
else if (ready == 2) {

    //Check for both items
    if (instance_number(obj_1up) == 0)
    && (instance_number(obj_blockcoin2) == 0) {
    
        //Exit this area
        with (obj_toad_slot) alarm[2] = 120;
        
        //Prevent alarm
        ready = 3;
    }
    else
        alarm[0] = 2;
}   

