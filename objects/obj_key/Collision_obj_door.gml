/// @description Open a locked door

//If the door is locked with a key...
if (other.locked == 1)

//...and the door is visible...
&& (other.visible)

///...and the key is being held
&& (held) {

    //Play 'Chest' sound
    audio_play_sound(snd_chest, 0, false);
    
    //Unlock it and remember it
    with (other) {
    
        locked = 0;
        ds_map_add(global.doors, id, 1);
    }
    
    //Create dust
    instance_create(x,y,obj_smoke);
    
    //Destroy
    instance_destroy();
}

