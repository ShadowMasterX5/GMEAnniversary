/// @description Get a powerup

//Get 1000 points
with (instance_create(x-8,y,obj_score)) event_user(5);

//Activate P-Wing power
if (global.pwing == 0) {

    //Play 'Powerup' sound
    audio_play_sound(snd_transform, 0, false);
    
    //Activate P-Wing
    global.pwing = 1;
    
    //Set raccoon form
    if (global.powerup != sprite_get_constant(spr_leaf))
    && (global.powerup != sprite_get_constant(spr_tanookisuit)) {
    
        //Give raccoon powers
        global.powerup = sprite_get_constant(spr_leaf);
        
        //Perform animation sequence and play sound
        with (instance_create(0,0,obj_player_transform)) {
        
            sequence = 4;
            audio_play_sound(snd_transform, 0, false);
        }
    }
}

//Otherwise
else {

    //Play 'Powerup' sound
    audio_play_sound(snd_powerup, 0, false);
}

//Destroy
instance_destroy();

