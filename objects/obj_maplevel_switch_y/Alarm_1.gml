/// @description Stomp the switch and remember it.

//Make sure if the switch has not beem stomped yet
if (image_index == 0) {

    //Play 'Castle break' sound
    audio_play_sound(snd_castlebreak, 0, false);
    
    //Create smoke effect
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_castlesmoke;
    
    //Set the frame
    image_index = 1;
    
    //Generate block
    event_user(2);
    
    //Remember it
    beaten = 2;
    ds_map_replace(global.mapscreen, id, 2);
}

