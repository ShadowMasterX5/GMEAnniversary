/// @description Set up the key

if (ready == 1) {

    //Check for the new key
    var newKey = keyboard_key;
    
    //If the new key is the escape key, warn the player that said key cannot be mapped
    if (newKey == vk_escape) {
    
        //Play 'Wrong' sound
        audio_play_sound(snd_wrong, 0, false);
    
        //Set default key
        switch (key) {
        
            //Control
            case (0): global.controlkey = vk_control; break;
            
            //Shift
            case (1): global.shiftkey = vk_shift; break;
            
            //Space
            case (2): global.spacekey = vk_space; break;
            
            //Enter
            case (3): global.enterkey = vk_enter; break;
            
            //Up
            case (4): global.upkey = vk_up; break;
            
            //Down
            case (5): global.downkey = vk_down; break;
            
            //Left
            case (6): global.leftkey = vk_left; break;
            
            //Right
            case (7): global.rightkey = vk_right; break;
        }
    }
    else {
    
        //Play 'Correct' sound
        audio_play_sound(snd_correct, 0, false);
    
        //Set new key
        switch (key) {
        
            //Control
            case (0): { 
            
                if (newKey == vk_lcontrol)
                || (newKey == vk_rcontrol)
                    global.controlkey = vk_control;
                else
                    global.controlkey = newKey;
            } break;
            
            //Shift               
            case (1): { 
            
                if (newKey == vk_lshift)
                || (newKey == vk_rshift)
                    global.shiftkey = vk_shift;
                else
                    global.shiftkey = newKey;
            } break;
            
            //Space                
            case (2): global.spacekey = newKey; break;
            
            //Enter                
            case (3): global.enterkey = newKey; break;
            
            //Up                 
            case (4): global.upkey = newKey; break;
            
            //Down
            case (5): global.downkey = newKey; break;
            
            //Left
            case (6): global.leftkey = newKey; break;
            
            //Right
            case (7): global.rightkey = newKey; break;
        }
    }
    
    //Delete the screenshot
    background_delete(back);
    
    //Activate everything
    instance_activate_all();

    //Resume movement on all backgrounds
    for (var i=0; i<8; i++) {
    
        __background_set( e__BG.HSpeed, i, temp_h[i] )
        __background_set( e__BG.VSpeed, i, temp_v[i] )
    }
    
    //Destroy
    instance_destroy();
}

