/// @description Map pipe

/*
**  This item uses creation code!
**
**  levelname = Name of the warp pipe
**  pipex = x position of pipe.
**  pipey = y position of pipe.
**  myroom = Destination room
**  block = Number of Star Coins to unlock level. (Default: 0)
*/

//Default variables
levelname = "No name set!";
levelid = -1;
exitdir = 10; //DO NOT USE, LEAVE AS IS!
exitalt = 10; //DO NOT USE, LEAVE AS IS!
saveme = 0;
pipex = 0;
pipey = 0;
myroom = room_next(room);
block = 0;

//Animate
image_speed = 0.2;

//Whether the level has been beaten
beaten = 0;

//Whether a checkpoint was hit inside the level
checkpoint = noone;

//Check map value
if (ds_map_find_value(global.mapscreen,id) > 0)
    visible = 1;

/* */
/*  */
