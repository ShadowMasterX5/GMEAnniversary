/// @description Make the mushroom house dissappear and remember it

//If the house is visible and the game is not 100% cleared
if ((image_index == 0) && (global.gameclear != 100)) {

    //Play 'Castle break' sound
    audio_play_sound(snd_inventory, 0, false);
    
    //Create smoke effect
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_castlesmoke;
    
    //Set the frame
    image_index = 1;
        
    //Remember it
    beaten = 2;
    ds_map_replace(global.mapscreen, id, 2);
}

