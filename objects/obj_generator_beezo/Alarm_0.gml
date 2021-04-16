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
            instance_create(__view_get( e__VW.XView, 0 )+random_range(-16,80),__view_get( e__VW.YView, 0 )-16,obj_beezo_active);
        else
            instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+random_range(-80,16),__view_get( e__VW.YView, 0 )-16,obj_beezo_active);
    }
    
    //Otherwise, stop.
    else
        alarm[0] = 1;
}

//Otherwise, stop.
else
    alarm[0] = 1;

