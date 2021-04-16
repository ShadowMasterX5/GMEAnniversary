/// @description Collision with boomerang

if (vulnerable < 99) {
    
    //Kill the enemy
    event_user(0);
    
    //Play 'Kick' sound
    audio_play_sound(snd_kick, 0, false);
    
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
    
    //Get 200 points
    with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
        event_user(2);
}

//Destroy boomerang
else if (vulnerable < 100) {

    with (other) {
    
        instance_create(x-8,y,obj_smoke);
        instance_destroy();
        exit;
    }
}

