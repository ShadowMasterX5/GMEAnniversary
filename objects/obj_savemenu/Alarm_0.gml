/// @description Begin closing the menu.

//Make the player able to move again
obj_mapplayer.ready = 0;

//Play the current world map theme
obj_mapcontrol.alarm[2] = 1;

//Clear some stuff
io_clear();

//Destroys the instance...
ready = 2;

