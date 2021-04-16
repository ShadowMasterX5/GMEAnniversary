/// @description Turn off E-Switch events

//Stop end timer
audio_stop_sound(snd_switchtimer_end);

//Enable all switches
with (obj_eswitchblock) {

    //Make it solid if needed
    if (mysolid == noone) then mysolid = instance_create(x,y,obj_solid);

    //Do not animate
    image_speed = 0;
    image_index = 0;
}

//Disable all blocks
with (obj_eblock) event_user(1);

