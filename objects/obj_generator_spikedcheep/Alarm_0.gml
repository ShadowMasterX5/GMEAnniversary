/// @description Generate flying spiked cheep

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player is inside the given coordinates
    if (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) 
    && (obj_levelcontrol.gswitchon == false) {
    
        //Repeat
        alarm[0] = 40;
        
        //Generate a cheepcheep
        if (choose(0,1) == 0)
            instance_create(__view_get( e__VW.XView, 0 )+64,__view_get( e__VW.YView, 0 )+216,obj_generatorcheep2);
        else
            instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-64,__view_get( e__VW.YView, 0 )+216,obj_generatorcheep2);
    }
    
    //Otherwise, stop
    else
        alarm[0] = 1;
}

//Otherwise, stop
else
    alarm[0] = 1;

