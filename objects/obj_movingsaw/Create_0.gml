/// @description A engine with a sawblade that moves in a path

/*
**  This item uses creation code!
**
**  ready = Whether this engine can move or not move at the start of the room.
**      0:      Do not move
**      1:      Move
**
**  direct = Set up the direction where this engine will move.
**      0:      Right
**      90:     Up
**      180:    Left
**      270:    Down
**
**  sawdir = Position of the rope
**      0:      Up
**      1:      Down
*/

//Default variables
ready = 0;
direct = 0;
sawdir = 0;

//Animate
image_speed = 0.3;

//Saw
saw = -1;

//Create sawblade
alarm[0] = 1;

//Play a sound when inside the screen
alarm[1] = 15;

//Start moving
alarm[10] = 2;

/* */
/*  */
