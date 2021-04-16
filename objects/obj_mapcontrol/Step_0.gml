/// @description Handle various map features

//Snap on the player's leftmost position
x = obj_mapplayer.x+8;
y = obj_mapplayer.y;

//Animate the player sprite at the top-left corner
anim += 0.07;

//If the 'Space' key is pressed...
if (keyboard_check_pressed(global.spacekey)) 

//...and the inventory is closed...
&& (!inventory)

//...and the player is not moving...
&& (obj_mapplayer.speed == 0) 

//...and the player is not ready or entering a level...
&& (obj_mapplayer.ready == 0)
&& (obj_mapplayer.letsgo == 0) {
    
    //Play 'Inventory' sound
    audio_play_sound(snd_inventory, 0, false);
    
    //Set the player state
    with (obj_mapplayer) ready = 1;
    
    //Show inventory
    inventory = 1;
    
    //Set selection
    boxselection = 1;
    if (global.inventory[0] == 0)
        boxselection = 0;
}

//Otherwise, if the inventory is opened
else if (inventory) {

    //If the 'Space' key is pressed
    if (keyboard_check_pressed(global.spacekey)) {
        
        //Play the inventory sound
        audio_play_sound(snd_inventory, 0, false);

        //Close the inventory
        inventory = 0;
        
        //Reset showcase
        showcase = 0;
        alarm[1] = 240;        
        
        //Set the player state
        obj_mapplayer.ready = 0;    
    }
    
    //Otherwise, if there is a item to select
    else if (boxselection != 0) {
    
        //If shift is pressed
        if (keyboard_check_pressed(global.shiftkey)) {
        
            //If a powerup is selected.
            if (global.inventory[boxselection] != cs_star) 
            && (global.inventory[boxselection] != cs_pwing) {
            
                //If a P-Wing is active
                if (!global.pwing) {
                
                    //Play the reserve item sound
                    audio_play_sound(snd_powerup,0,0)
                    
                    //Remember previous powerup
                    var previous = global.powerup;
                
                    //Change the powerup to the selected item
                    global.powerup = global.inventory[boxselection];
                    
                    //If Mario does not have a powerup.
                    if (previous == 0) {
                        
                        //Shift the inventory items over by one
                        for (var i = boxselection; i < global.inventory[0]; i++) {
                        
                            global.inventory[i] = global.inventory[i+1];
                        }
                            
                        //Subtract from the number of items in the inventory
                        global.inventory[0]--;
                    }
                    
                    //Otherwise, replace the powerup with the old powerup.
                    else {
                            
                        global.inventory[boxselection] = previous;
                    }
                    
                    //Finish item retrieval
                    event_user(0);
                }
                else {
                
                    //Deny event
                    audio_play_sound(snd_wrong, 0, false);
                }
            }
            
            //Otherwise, if a star got selected.
            else if (global.inventory[boxselection] == cs_star) {
            
                //If the star is not active
                if (!global.mapstar) {
            
                    //Play the reserve item sound
                    audio_play_sound(snd_powerup,0,0)
                                    
                    //Shift the inventory items over by one
                    for (var i = boxselection; i < global.inventory[0]; i++) {
                    
                        global.inventory[i] = global.inventory[i+1];
                    }
                        
                    //Subtract from the number of items in the inventory
                    global.inventory[0]--;
                    
                    //Give Mario star power on the next level if we didn't.
                    global.mapstar = true;
                    
                    //Finish item retrieval
                    event_user(0);
                }
                else {
                
                    //Deny event
                    audio_play_sound(snd_wrong, 0, false);
                }         
            }
            
            //Otherwise, if a p-wing got selected
            else if (global.inventory[boxselection] == cs_pwing) {
            
                //If the p-wing is not active
                if (global.pwing == 0) {
            
                    //Play the reserve item sound
                    audio_play_sound(snd_powerup,0,0)
                    
                    //Change the powerup to the selected item
                    if (global.powerup != cs_leaf)
                    && (global.powerup != cs_tanooki)
                        global.powerup = cs_leaf;
                                    
                    //Shift the inventory items over by one
                    for (var i = boxselection; i < global.inventory[0]; i++) {
                    
                        global.inventory[i] = global.inventory[i+1];
                    }
                        
                    //Subtract from the number of items in the inventory
                    global.inventory[0]--;
                    
                    //Give Mario star power on the next level if we didn't.
                    global.pwing = 1;
                    
                    //Finish item retrieval
                    event_user(0);
                }
                else {
                
                    //Deny event
                    audio_play_sound(snd_wrong, 0, false);
                }                     
            }
        }
        
        //If the 'Left' key is pressed, move one item to the left
        else if (keyboard_check_pressed(global.leftkey)) 
        && (boxselection != 0) {
        
            //If the item selected is the leftmost one, go to the last one
            if (boxselection > 1) {
            
                //Play 'Move' sound
                audio_play_sound(snd_move, 0, false);
                
                //Move left
                boxselection--;
            }
                
            //Otherwise, go to the previous one
            else
                boxselection = 1;
        }
        
        //If the 'Right' key is pressed, move one item to the right
        else if (keyboard_check_pressed(global.rightkey))
        && (boxselection != 0) {
            
            //If the item selection if the rightmost one, go to the first item.
            if (boxselection < global.inventory[0]) {
            
                //Play 'Move' sound
                audio_play_sound(snd_move, 0, false);
                
                //Move right
                boxselection++;
            }
                
            //Otherwise, go to the next one
            else
                boxselection = global.inventory[0];
        }
    }
    
    //Show inventory
    inv_y += 4;
    if (inv_y > 40)
        inv_y = 40;        
}

//Hide inventory if not showing
if (!inventory) {

    inv_y -= 4;
    if (inv_y < 0)
        inv_y = 0;
}

