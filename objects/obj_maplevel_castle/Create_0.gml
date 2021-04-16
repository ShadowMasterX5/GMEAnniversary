/// @description Map panel

/*
**  This item uses creation code!
**
**  levelname = Name of the level. (In quotes)
**  levelid = ID for the level, this is used to handle star coins.
**  exitdir = Regular exit direction
**  exitalt = Secret exit direction      
**      0: Up
**      1: Down
**      2: Left
**      3: Right
**      4: Up-Left
**      5: Up-Right
**      6: Down-Left
**      7: Down-Right
**      8: Up-Down
**      9: Left-Right
**
**  saveme = Whether to save the game after beating
**  myroom = Destination room
**  block = Number of Star Coins to unlock level. (Default: 0)
*/

//Default variables
levelname = "No name set!"
levelid = -1;
exitdir = -1;
exitalt = -1;
saveme = 1;
myroom = room_next(room);
block = 0;

//Animate
image_speed = 0;

//Whether the level has been beaten
beaten = 0;

//Whether a checkpoint was hit inside the level
checkpoint = noone;
alarm[0] = 1;

//Check map value
if (ds_map_find_value(global.mapscreen,id) > 0) {

    visible = 1;
    if (ds_map_find_value(global.mapscreen,id) > 1) {
    
        beaten = 1;
        image_index = 1;
    }
}

/* */
/*  */
