/// @description Crumble the castle and remember it.

//Make sure if the switch has not beem stomped yet
if (image_index == 0) {

    //Play 'Castle break' sound
    audio_play_sound(snd_castlebreak, 0, false);
    
    //Create smoke effect
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_castlesmoke;
    
    //Set the frame
    image_index = 1;
    
    //Remember it
    ds_map_replace(global.mapscreen, id, 2);
}

