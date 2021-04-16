/// @description Display inventory and get given item

//If the item inside is a 1UP
if (sprite_index == spr_1up)
    instance_create(obj_playerparent.x,obj_playerparent.y,obj_1up);
    
//Otherwise, if the item inside is a 3UP
else if (sprite_index == spr_3upmoon)
    instance_create(obj_playerparent.x,obj_playerparent.y,obj_3upmoon);
    
//Otherwise, add a item to the inventory
else {

    //Play 'Inventory' sound
    audio_play_sound(snd_inventory, 0, false);
    
    //Show it
    inventory = 1;

    //If the inventory is not full... increment size
    if (global.inventory[0] < 13) 
        global.inventory[0]++;
    
    //Set the item on the inventory.
    global.inventory[global.inventory[0]] = sprite_get_constant(sprite_index);
}

//Create smoke effect
instance_create(x-8,y,obj_smoke);

//Make it invisible
image_alpha = 0;

