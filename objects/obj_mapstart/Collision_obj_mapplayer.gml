/// @description Print level name and perform actions

//Print level name if the player is not moving
if (other.speed == 0) {

    //Level ID
    obj_mapcontrol.levelid = -1;

    //Print 'Start' in map manager
    obj_mapcontrol.levelname = "START";
}

