/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create vegetable
    with (instance_create(obj_playerparent.x-8,y+8,obj_turnip_out)) {
    
        image_speed = other.image_speed;
        sprite_index = spr_turnip_bomb;
        myveggie = obj_turnip_bomb;
        aa = other.aa;
    }
    
    //Destroy
    instance_destroy();
}

