/// @description Collision with the player

//Kill if stunned
if (sprite_index == spr_beachkoopa) {
    
    //Play 'Kick' sound
    audio_play_sound(snd_kick, 0, false);

    //Create dead object
    imdead = instance_create(x,y,obj_enemy_dead);
    
    //Make the dead object hereby the sprite
    imdead.sprite_index = sprite_index;
    
    //Make the dead object hereby the scale
    imdead.image_xscale = xscale;
    
    //Destroy
    instance_destroy();
    
    //Get 200 points
    with (instance_create(x-8,y,obj_score)) event_user(2);
    
    //Create 'Spinthump' effect
    with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
    
    //Make the player visually kick the enemy
    with (other) event_user(4);
}

//Otherwise, do normal collision
else
    event_inherited();

