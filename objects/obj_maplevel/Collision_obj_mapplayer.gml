/// @description Print level name on obj_mapcontrol

if (other.speed == 0)
&& ((obj_mapcontrol.levelname = "") || (obj_mapcontrol.levelname = "????????")) {

    //Level ID
    obj_mapcontrol.levelid = levelid;

    //Level Name    
    if (block > 0)
        obj_mapcontrol.levelname = "????????";    
    else
        obj_mapcontrol.levelname = levelname;
}

