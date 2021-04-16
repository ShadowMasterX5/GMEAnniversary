/// @description Create a coin

//If the puller object does exist
if (instance_exists(obj_playerparent)) 
&& (keyboard_check(global.controlkey)) {
    
    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Create shards
    event_user(0);
    
    //Create 5 coins
    repeat (5) {
    
        with (instance_create(x+8,obj_playerparent.bbox_top-16,obj_blockcoin2)) {
        
            hspeed = random_range(1,-1);
            vspeed = random_range(-1,-4);
        }        
    }
    
    //Change the puller sprite
    with (obj_puller) sprite_index = scr_mario_duck();
    
    //End pull
    alarm[1] = 15;
    
    //Destroy
    visible = 0;
}

