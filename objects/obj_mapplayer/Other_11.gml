/// @description Remember the player's last position in the map

//If the map position is going to be changed
if (global.pipetype == 2) {

    //Replace maps
    ds_map_replace(global.mapscreen,"mapx", global.pipex);
    ds_map_replace(global.mapscreen,"mapy", global.pipey);
    
    //Reset pipetype variable
    global.pipetype = 0;
}

//Otherwise, stay in place
else {
    
    ds_map_replace(global.mapscreen,"mapx", x);
    ds_map_replace(global.mapscreen,"mapy", y);
}

