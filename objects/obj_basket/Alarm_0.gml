/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create vegetable
    with (instance_create(obj_playerparent.x-8,y,obj_turnip_out)) {
    
        image_speed = other.image_speed;
        image_index = other.image_index;        
        sprite_index = spr_basket;
        myveggie = obj_basket_up;
    }
    
    //Destroy
    instance_destroy();
}

