/// @description Make the player interact with the item

if (keyboard_check_pressed(global.controlkey))
&& (canpull()) {

    //Force player hold
    with (obj_playerparent) {
    
        holding = 1;
        visible = 0;
    }
    
    //Create puller
    instance_create(other.x,other.y,obj_puller);
    
    //If the puller object exist
    if (instance_exists(obj_puller)) {
    
        //Play 'Pickup' sound
        audio_play_sound(snd_pickup, 0, false);
        
        //Create vegetable
        with (instance_create(obj_playerparent.x-8,y+8,obj_turnip_out)) {
        
            sprite_index = spr_turnip_mini;
            myveggie = obj_turnip_mini;
        }
        
        //Destroy
        instance_destroy();
    }
}

