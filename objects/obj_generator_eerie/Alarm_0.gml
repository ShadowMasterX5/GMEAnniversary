/// @description Generate a eerie

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player is on the set coordinates.
    if (obj_playerparent.x > xmin) 
    && (obj_playerparent.x < xmax) 
    && (obj_levelcontrol.gswitchon == false) {
    
        //Repeat the process.
        alarm[0] = 80;
        
        //Change direction
        dir = -dir;
        
        //Generate a spiked cheep-cheep.
        if (dir == 1)
            with (instance_create(__view_get( e__VW.XView, 0 )-16,__view_get( e__VW.YView, 0 )+random_range(32,184),obj_eerie_active)) wave = 0;
        else
            with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16,__view_get( e__VW.YView, 0 )+random_range(32,184),obj_eerie_active)) wave = 0;
    }
    
    //Otherwise, stop.
    else
        alarm[0] = 1;
}

//Otherwise, stop.
else
    alarm[0] = 1;

