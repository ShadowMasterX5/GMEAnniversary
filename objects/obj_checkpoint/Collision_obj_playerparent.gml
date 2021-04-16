/// @description Save the last point

if (flagsprite == spr_checkpoint_flag) {

    //Play 'Whistle' sound
    audio_play_sound(snd_whistle, 0, false);

    //Deactivate checkpoints
    with (obj_checkpoint) flagsprite = spr_checkpoint_flag;
    
    //Switch to the player flag
    flagsprite = spr_checkpoint_flag_m;
    
    //Recover all health
    if (health < 4) then health = 4;
    
    if (global.healthmode == false) 
    {
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
    
    //Sparkles
    event_user(0);
    
    //Remember checkpoint
    global.checkpoint = id;
    global.checkpointroom = room;
    
    //Save collected powerstar
    for (var i = 0; i < 3; i++) {
    
        if (ds_map_find_value(global.sc[i],global.level) == 1)
            ds_map_replace(global.sc[i],global.level,2);
    }
}

