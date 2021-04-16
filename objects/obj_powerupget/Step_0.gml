/// @description Chest item logic.

//If the vertical speed is equal to 0 and it's not ready yet.
if (vspeed == 0) && (ready == 0) {

    //Play 'Chest Item Get' sound
    audio_play_sound(snd_chestitemget, 0, false);
    
    //Ready
    ready = 1;    
    
    //Add the item to the inventory.
    alarm[0] = 120;
    
    //Make it invisible.
    alarm[1] = 1;
}

//Make the inventory show
if (inventory) {

    inv_y += 4;
    if (inv_y > 40)
        inv_y = 40;
}   

