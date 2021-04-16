/// @description Change the music to play in the map

//Do not continue if the game is restarting
if (obj_persistent.restart == false) {

    //If the player is not moving
    if (other.speed == 0)
    && (global.world != mapworld) {
    
        //Set up the world
        global.world = mapworld;
        
        //If the player is not ready
        if (other.ready == 0)
        && (global.clear == 0) {
        
            //Set up the music
            with (obj_mapcontrol) {
    
                //Stop it
                alarm[3] = 1;
                
                //Play it
                alarm[2] = 3;
            }                    
        }
    }
}

