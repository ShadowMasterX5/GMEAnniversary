/// @description Collision with a key

//If the key is held by the player, open the lock.
if (other.held) {

    //If the door is closed.
    if (!ready) {
    
        //Play 'Door' sound
        audio_play_sound(snd_door, 0, false);
    
        //Open it
        ready = 1;
        
        //Animate it
        image_speed = 0.5;
    }
    
    //Destroy the key
    with (other) {
    
        instance_create(x,y,obj_smoke);
        instance_destroy();
    }
}

