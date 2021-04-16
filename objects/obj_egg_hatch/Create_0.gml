/// @description Yoshi came out from a egg.

//Default colour
colour = 0;

//Play 'Yoshi' sound
audio_play_sound(snd_yoshi, 0, false);

//Sets and starts the animation sequences.
ready = 0;

//Deactivate tides
if (instance_exists(obj_tides)) {

    with (obj_tides) visible = 0;
    instance_deactivate_object(obj_tides);
}

//Start animations
alarm[0] = 1;

