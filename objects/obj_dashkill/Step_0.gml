/// @description Pow killer logic

//Do not update combo
hitcombo = 0;

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player does have the football powerup
    if (global.powerup == cs_football) {
    
        //And the player is dashing
        if ((obj_playerparent.pmeter >= 112) && (obj_playerparent.holding == 0)) {
        
            //Hereby position
            x = obj_playerparent.x;
            y = obj_playerparent.y;
            
            //Hereby scale
            image_xscale = obj_playerparent.xscale;
        }
        
        //Otherwise, stay away
        else {
        
            x = -1000;
            y = -1000;
        }
    }
    
    //Otherwise, stay away
    else {
    
        x = -1000;
        y = -1000;
    }
}
else {

    x = -1000;
    y = -1000;
}

