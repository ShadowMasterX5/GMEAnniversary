/// @description Open adyacent paths

//If the level has been cleared with a regular exit
if (global.clear == 1) {

    //Get the ID of the panel where the player is
    var panel = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_maplevel,0,0);
    
    //If the panel exists
    if (panel) {
    
        //Open regular adyacent paths
        event_user(2);
        
        //Handle panel events
        with (panel) {
        
            //Remember you got the main exit
            if (exitdir != -1)
            && (exitdir != 10) {
            
                if (!ds_map_exists(global.exits, id))
                    ds_map_replace(global.exits, id, 1);                
            }
        
            //Mark the level as beaten...
            beaten = 1;
            
            //...perform panel events...
            alarm[1] = 45;
            
            //...do not remember checkpoints...
            checkpoint = noone;
            
            //...and make sure the game remembers it
            ds_map_replace(global.mapscreen, id, 2);
        }
    }
    
    //Do not allow movement
    ready = 1;
    
    //Allow movement after a while
    alarm[3] = 90;
}

//Otherwise, if the level has been cleared with a secret exit
else if (global.clear == 2) {

    //Get the ID of the panel where the player is
    var panel = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_maplevel,0,0);
    
    //If the panel exists
    if (panel) {
    
        //Open secret adyacent paths
        event_user(3);
        
        //Handle panel events
        with (panel) {
        
            //Remember you got the main exit
            if (exitalt != -1)
            && (exitalt != 10) {
            
                if (!ds_map_exists(global.exits2, id))
                    ds_map_replace(global.exits2, id, 1);                
            }
        
            //Mark the level as beaten...
            beaten = 1;
            
            //...do not remember checkpoints
            checkpoint = noone;
            
            //...and make sure the game remembers it
            ds_map_replace(global.mapscreen, id, 2);
        }
    }
        
    //Do not allow movement
    ready = 1;
    
    //Allow movement after a while
    alarm[3] = 90;
}

