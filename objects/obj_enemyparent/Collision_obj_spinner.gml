/// @description Collision with a raccoon tail

//If the enemy is vulnerable to invincibility and it's not moving up
if (vulnerable < 99) && (vspeed >= 0) {

    //Play 'Kick sound
    audio_play_sound(snd_kick, 0, false);

    //Kill or flip the enemy
    event_user(7);
    
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
        
    //Get 200 points
    with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) 
        event_user(2);
}

