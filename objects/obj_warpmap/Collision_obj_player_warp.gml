/// @description Return to the map

//Stop him
with (other) {

    move_snap(16,16);
    speed = 0;
}

//Replace the x and y position in map
if (pipetype != global.pipetype) {

    ds_map_replace(global.mapscreen, "mapx", global.pipex);
    ds_map_replace(global.mapscreen, "mapy", global.pipey);
}

//Clear it
global.clear = 1;

//Return to the map
endlevel();

