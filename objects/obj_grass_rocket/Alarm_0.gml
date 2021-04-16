/// @description Create a rocket

//If the puller object does exist
if (instance_exists(obj_playerparent)) 
&& (keyboard_check(global.controlkey)) {

    //Play 'Pickup' sound
    audio_play_sound(snd_pickup, 0, false);
    
    //Get 1000 points
    with (instance_create(x,y,obj_score)) event_user(5);
    
    //Create a rocket object
    with (instance_create(x+8,y+8,obj_player_rocket2)) myroom = other.myroom;
    
    //Destroy the player object
    with (obj_playerparent) instance_destroy();
    
    //Destroy the puller object
    with (obj_puller) instance_destroy();
    
    //Destroy this patch
    instance_destroy();
}

