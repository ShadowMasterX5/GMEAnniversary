/// @description Go down the flagpole

//Play the flagpole sound
audio_play_sound(snd_flagpole, 0, false);

//Give points
with (flagpole) {

    event_user(0);
    with (instance_create(x+8,y+144,obj_flag_p)) 
        vspeed = -1.5;
}

//Move down
vspeed = 1.5;

//Start walking
alarm[0] = 112;

