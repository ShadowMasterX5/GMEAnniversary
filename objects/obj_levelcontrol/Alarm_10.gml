/// @description Turn off ?-Switch events

//Stop end timer
audio_stop_sound(snd_switchtimer_end);

//Enable all switches
with (obj_qswitchblock) {

    //If a timeline exists
    if (timelineS != noone) {
    
        //Stop given timeline
        timeline_running = false;
        
        //Reset timeline
        timeline_position = 899;
    }

    //Make it solid if needed
    if (mysolid == noone) then mysolid = instance_create(x,y,obj_solid);

    //Do not animate
    image_speed = 0;
    image_index = 0;
}

