/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create vegetable
    with (instance_create(obj_playerparent.x,y,obj_turnip_out)) {
    
        //Get the sprite
        sprite_index = other.sprite_index;
        
        //Get the facing direction
        image_xscale = other.xscale;
        
        //Set the respawn object
        turnback = obj_shyguy;
        myveggie = obj_enemy_carried;
        
        //Pull up
        alarm[5] = 3;
        
        //Mark as enemy
        enemy = true;
    }
    
    //Destroy
    instance_destroy();
}

