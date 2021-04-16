/// @description Open up the path

//If the level is not visible
if (!visible) {
    
    //Make visible...
    visible = 1;
    
    //...and remember it
    ds_map_replace(global.mapscreen, id, 1);
}

