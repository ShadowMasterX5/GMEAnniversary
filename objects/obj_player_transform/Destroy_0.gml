/// @description Make the player visible

//If the player is not riding anything
if (global.mount == 0) {
    
    //If the player is pulling an item, make said object visible
    if (instance_exists(obj_puller))    
        obj_puller.visible = true;
        
    //Otherwise, if the spinner exists, make said object visible
    else if (instance_exists(obj_spinner))    
        obj_spinner.visible = true;
        
    //Otherwise, if the dropdown exists, make said object visible
    else if (instance_exists(obj_dropdown))    
        obj_dropdown.visible = true;
        
    //Otherwise, if the wallrunner exists make said object visible
    else if (instance_exists(obj_wallrunner))    
        obj_wallrunner.visible = true;
        
    //Otherwise, make the main player visible
    else
        obj_playerparent.image_alpha = 1;
}
    
//If the player is riding a yoshi, make yoshi visible.
if (global.mount == 1)
    obj_yoshi.visible = true;
    
//Otherwise, if the player is riding a kuribo shoe, make the kuribo shoe visible.
else if (global.mount == 2)
    obj_kuriboshoe.visible = true;

