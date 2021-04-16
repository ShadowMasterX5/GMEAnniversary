/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create vegetable
    with (instance_create(obj_playerparent.x-8,y,obj_turnip_out)) {
    
        sprite_index = spr_vegshroom_1up;
        myveggie = obj_1up;
    }
    
    //Destroy
    instance_destroy();
}

