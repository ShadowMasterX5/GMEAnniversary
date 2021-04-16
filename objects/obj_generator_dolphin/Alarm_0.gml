/// @description Generate a dolphin in the given direction

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player is on the set coordinates.
    if (obj_playerparent.x > xmin) 
    && (obj_playerparent.x < xmax)
    && (obj_levelcontrol.gswitchon == false) {
    
        //If the generator generated less than 5 dolphins
        if (spawn < 5) {
    
            //Repeat the process.
            alarm[0] = 30;
            
            //Increment spawn
            spawn++;
            
            //Generate a spiked cheep-cheep.
            if (dir == 1)
                instance_create(__view_get( e__VW.XView, 0 )-16,__view_get( e__VW.YView, 0 )+random_range(32,184),obj_generatordolphin);
            else
                instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16,__view_get( e__VW.YView, 0 )+random_range(32,184),obj_generatordolphin);
        }
        else {
        
            //Reset spawn
            spawn = 0;
            
            //Generate a new batch
            alarm[0] = 120;
        }
    }
    
    //Otherwise, stop.
    else
        alarm[0] = 1;
}

//Otherwise, stop.
else
    alarm[0] = 1;

