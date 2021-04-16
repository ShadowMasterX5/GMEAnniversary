/// @description End statue morph

with (obj_playerparent) {

    //Play transforming sound.
    audio_play_sound(snd_transform,0,0);
    
    //Make Mario invisible.
    visible = false;
    
    //Start transforming sequence.
    with (instance_create(x,y,obj_player_transform)) sequence = 4;
    
    //Stop Mario invincibility.
    invulnerable = 0;
    
    //Enable controls
    disablecontrol = 0;
}

