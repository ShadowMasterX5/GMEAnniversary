/// @description Generate Galoombas if inside the coordinates

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
        
        //Otherwise, spawn a galoomba
        else {
        
            //Generate a galoomba
            instance_create(__view_get( e__VW.XView, 0 )+random_range(32,global.gw-32),__view_get( e__VW.YView, 0 )-32,obj_galoomba_parachute);
            
            //Repeat
            alarm[0] = 180;
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

