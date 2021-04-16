/// @description Extend time for 10 seconds

if (global.time > 0) {

    //Play 'Collect' sound
    audio_play_sound(snd_collect, 0, false);

    //Extend time
    with (instance_create(x,y,obj_score)) event_user(12);
    
    //Create sparkle
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_sparkle;
    
    //Destroy
    instance_destroy();
}

