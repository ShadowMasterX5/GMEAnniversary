/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //With player
    with (obj_playerparent) {
    
        visible = 1;
        holding = 0;
        disablecontrol = false;
    }
    
    //Create vegetable
    with (instance_create(x,y,obj_smoke)) {
    
        sprite_index = spr_digsand;
        vspeed = -1;
    }
    
    //Destroy puller
    with (obj_puller) instance_destroy();
    
    //Destroy
    instance_destroy();
}

