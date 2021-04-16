/// @description Create a powerup

//If the puller object does exist
if (instance_exists(obj_playerparent)) 
&& (keyboard_check(global.controlkey)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create shards
    event_user(0);
    
    //Create propeller
    if (sprout == cs_propeller) {
    
        //Create propeller mushroom
        instance_create(x+8,obj_playerparent.bbox_top-16,obj_pickup_propeller);
    }
    else {
    
        with (sprite_make_object(x+8,obj_playerparent.bbox_top-16,constant_get_sprite(sprout))) {
        
            //Set the horizontal speed
            hspeed = 1*obj_playerparent.xscale;
            
            //Set the vertical speed
            vspeed = -4;
        }
    }
    
    //Change the puller sprite
    with (obj_puller) sprite_index = scr_mario_duck();
    
    //End pull
    alarm[1] = 15;
    
    //Destroy
    visible = 0;
}

