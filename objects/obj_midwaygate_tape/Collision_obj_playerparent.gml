/// @description Save the last point

if (visible) {

    //Play 'Whistle' sound
    audio_play_sound(snd_whistle, 0, false);
    
    //Recover all health
    if (health < 4) then health = 4;
    
    //Turn big
    if (global.healthmode == false) {
    
        //If Mario is small.
        if (global.powerup == cs_small) {
        
            audio_play_sound(snd_powerup, 0, false);
            
            //Turn Mario into 'Super' Mario.
            global.powerup = cs_big;
            
            //Perform animation sequence
            with (instance_create(0,0,obj_player_transform))
                sequence = 0;
        }
    }
    
    //Make invisible
    visible = false;
    
    //Remember checkpoint
    global.checkpoint = id;
    global.checkpointroom = room;
    
    //Save collected powerstar
    for (var i = 0; i < 3; i++) {
    
        if (ds_map_find_value(global.sc[i],global.level) == 1)
            ds_map_replace(global.sc[i],global.level,2);
    }
}

