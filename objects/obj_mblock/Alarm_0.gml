/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create vegetable
    with (instance_create(obj_playerparent.x-8,y,obj_turnip_out)) {
    
        sprite_index = spr_mblock;
        myveggie = obj_mblock_up;
    }
    
    //Destroy
    instance_destroy();
}
