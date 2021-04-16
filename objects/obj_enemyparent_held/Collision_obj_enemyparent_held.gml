/// @description Collision with held/thrown bricks

//If the enemy is vulnerable
if (vulnerable < 99) {

    //If the brick is held
    if (other.held == 1) 
    || (other.vspeed != 0) {
    
        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);
    
        //Kill enemy
        event_user(0);    
        
        //Get 1000 points
        with (instance_create(x-8,y,obj_score)) event_user(5);
        
        //Create 'Spinthump' effect
        with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
        
        //Destroy held enemy
        with (other) event_user(0);
    }
}

