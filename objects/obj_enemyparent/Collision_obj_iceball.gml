/// @description Collision with ice balls

//If the player is vulnerable to ice balls
if (vulnerable < 2) {
    
    //Play 'Transform' sound
    audio_play_sound(snd_freeze, 0, false);
    
    //Turn into a ice cube
    imiced = instance_create(x,y,obj_iceblock);
    
    //Set parameters
    with (imiced) {
        
        //Set the sprite
        sprite_index = other.sprite_index;
        
        //Change size
        event_user(14);
    }
    
    //Destroy
    instance_destroy();
}

//Destroy the projectile
if (vulnerable < 100)
    with (other) event_user(0);

