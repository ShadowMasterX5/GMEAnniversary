/// @description Generate bullet bills if inside the coordinates

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is inside the given 
    if (obj_playerparent.x >= xmin)
    && (obj_playerparent.x <= xmax) {
    
        //If the level control is in silver coin mode, wait
        if (obj_levelcontrol.gswitchon) {
        
            //Hold event
            alarm[0] = 1;
            exit;
        }
        
        //Otherwise, spawn a bullet bill
        else {
        
            //Play 'Explode' sound
            audio_play_sound(snd_explode, 0, false);
            
            //Repeat
            alarm[0] = 200;
        
            //If the generator is in mode 0 (Diagonal)
            if (mode == 0) {
            
                with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-128, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-128, obj_bullet)) motion_set(315, 2);
                with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+112, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-128, obj_bullet)) motion_set(225, 2);
                with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-128, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+112, obj_bullet)) motion_set(45, 2);
                with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+112, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+112, obj_bullet)) motion_set(135, 2);
            }
            
            //Otherwise, if the generator is in mode 1 (Horizontal Vertical)
            else if (mode == 1) {
            
                with (instance_create(__view_get( e__VW.XView, 0 )-8, obj_playerparent.y, obj_bullet)) motion_set(0, 2);
                with (instance_create(obj_playerparent.x, __view_get( e__VW.YView, 0 )-8, obj_bullet)) motion_set(90, 2);
                with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+8, obj_playerparent.y, obj_bullet)) motion_set(180, 2);
                with (instance_create(obj_playerparent.x, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+8, obj_bullet)) motion_set(270, 2);                
            }
        }
    }
    
    //Otherwise, hold it
    else {
    
        //Hold event
        alarm[0] = 1;
        exit;
    }
}

//Otherwise, hold
else {

    //Hold event
    alarm[0] = 1;
    exit;
}

