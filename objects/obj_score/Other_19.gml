/// @description 1-UP

//Set the sprite
sprite_index = spr_1uppts;

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
}
else
    with (obj_persistent) addlives += 1;

