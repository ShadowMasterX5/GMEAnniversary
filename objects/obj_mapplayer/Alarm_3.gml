/// @description Allow movement or ask to save the current game

//Check for the player object
var panel = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_maplevel,0,0);

//If the player exists
if (panel) {

    //If the player died in the level
    if (global.died == 0) {

        //If you cannot save with the current panel
        if (panel.saveme == 0) {
        
            //If there's still opener objects around, wait
            if (instance_number(obj_opener) > 0) {
            
                alarm[3] = 1;
                exit;
            }        
            
            //Allow movement
            ready = 0;
            
            //Play music
            obj_mapcontrol.alarm[2] = 1;
        }
            
        //Otherwise, wait
        else if (panel.saveme == 1) && (global.clear > 0) {
        
            //If there's still opener objects around, wait
            if (instance_number(obj_opener) > 0) {
            
                alarm[3] = 1;
                exit;
            }
            
            //If debug mode is not activated or the player did not used cheats, allow save.
            if (debug_mode == false)
            && (global.cheats == false)
                instance_create(0,0,obj_savemenu);
                
            //Otherwise, allow movement
            else {
            
                ready = 0;
                obj_mapcontrol.alarm[2] = 1;
            }
        }
    }
    else {
    
        //End die sequence
        global.died = 0;
        
        //Allow movement
        ready = 0;
        
        //Play music
        obj_mapcontrol.alarm[2] = 1;
    }
}

//Reset clear variable
global.clear = 0;

