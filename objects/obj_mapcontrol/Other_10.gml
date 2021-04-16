/// @description Inventory retrieval script

//Delay allow movement
with (obj_mapplayer) {

    ready = 2;
    alarm[4] = 4;
}

//Show Mario
showcase = 0;
alarm[1] = 240;

//Close the inventory
inventory = 0;

//Create smoke
with (instance_create(__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+8,obj_smoke))
    depth = -11;

