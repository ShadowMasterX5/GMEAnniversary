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
    
    //Create cannons
    switch (f) {
    
        //0, 180
        case (0): {
        
            with (instance_create(x+16,y,obj_cannonball)) motion_set(0, 1.5);
            with (instance_create(x-16,y,obj_cannonball)) motion_set(180, 1.5);
        } break;

        //45, 225
        case (1): {
        
            with (instance_create(x+16,y-16,obj_cannonball)) motion_set(45, 1.5);
            with (instance_create(x-16,y+16,obj_cannonball)) motion_set(225, 1.5);
        } break;
        
        //90, 270
        case (2): {
        
            with (instance_create(x,y-16,obj_cannonball)) motion_set(90, 1.5);
            with (instance_create(x,y+16,obj_cannonball)) motion_set(270, 1.5);
        } break;
        
        //135, 315
        case (3): {
        
            with (instance_create(x-16,y-16,obj_cannonball)) motion_set(135, 1.5);
            with (instance_create(x+16,y+16,obj_cannonball)) motion_set(315, 1.5);                    
        } break;
    }
    
    //Repeat after 3 seconds
    alarm[0] = 120;
    alarm[1] = 60;
}

