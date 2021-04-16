/// @description Yellow Switch Palace

/*
**  This item uses creation code!
**
**  exitdir = Regular exit direction
**  exitalt = Secret exit direction      
**      0: Up
**      1: Down
**      2: Left
**      3: Right
**
**  saveme = Whether to save the game after beating
*/

//Default variables
levelname = "Yellow Switch Palace"
levelid = -1;
exitdir = -1;
exitalt = -1;
saveme = 1;
myroom = rm_switchpalace_y;
block = 0;

//Animate
image_speed = 0;

//Whether the level has been beaten
beaten = 0;

//Whether a checkpoint was hit inside the level
checkpoint = noone;

//Check map value
if (ds_map_find_value(global.mapscreen,id) > 0) {

    visible = 1;
    if (ds_map_find_value(global.mapscreen,id) == 2) {
    
        beaten = 2;
        image_index = 1;
    }
}

/* */
/*  */
