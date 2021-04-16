/// @description Shoot a cannonball

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//If the gray p-switch is active
else if (obj_levelcontrol.gswitchon == true) {

    alarm[0] = 1;
    exit;
}

//Otherwise, shoot a cannonball
else {

    //Play 'Cannon' sound
    audio_play_sound(snd_explode, 0, false);
    
    //Create cannon ball
    switch (image_index) {
    
        //Frame 0
        case (0): {
        
            //If the player is at the left
            if (obj_playerparent.x < x) {
            
                with (instance_create(x-8,y-8,obj_cannonball))
                    motion_set(135, 1.5);
            }
            
            //Otherwise, if the player is at the left
            else if (obj_playerparent.x > x) {
            
                with (instance_create(x+8,y+8,obj_cannonball))
                    motion_set(315, 1.5);
            }
        } break;
            
        //Frame 1
        case (1): {
        
            //If the player is at the left
            if (obj_playerparent.x < x) {
            
                with (instance_create(x-8,y+8,obj_cannonball))
                    motion_set(225, 1.5);
            }
            
            //Otherwise, if the player is at the left
            else if (obj_playerparent.x > x) {
            
                with (instance_create(x+8,y-8,obj_cannonball))
                    motion_set(45, 1.5);
            }
        } break;
    }
    
    //Repeat after 3 seconds
    alarm[0] = 180;
}

