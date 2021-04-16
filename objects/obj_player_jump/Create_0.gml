/// @description The player leaps into the room

//Start at the bottom of the level
y = room_height+16;

//Move upwards
vspeed = -6;

//Whether the player is flashing
isflashing = 0;
alarm[0] = 1;

//Is the player holding something?
holding = 0;

//Draw the item held
myitem = -1;
myframe = 0;

