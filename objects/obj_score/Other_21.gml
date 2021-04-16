/// @description 3-UP

//Set the sprite
sprite_index = spr_3uppts;

//Position fix
x += 8;

//Set the scale
scale = 0;

//If there's not spare lifes
if (obj_persistent.addlives == 0) {

    //Play '1up' sound
    audio_play_sound(snd_1up, 0, false);

    //Add a life instantly
    lives++;
    
    //ADd a spare life
    with (obj_persistent) {
    
        addlives += 2;
        alarm[2] = 30;
    }
}
else
    with (obj_persistent) addlives += 3;

