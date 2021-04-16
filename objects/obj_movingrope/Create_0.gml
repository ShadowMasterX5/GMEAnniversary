/// @description A platform that moves in a path.

/*
**  This item uses creation code!
**
**  ready = Whether this platform can move or not move at the start of the room.
**      0:      Do not move
**      1:      Move
**
**  direct = Set up the direction where this platform will move.
**      0:      Right
**      90:     Up
**      180:    Left
**      270:    Down
**
**  ropelength = Length of the rope. (16*value)
*/

//Default variables
ready = 0;
direct = 0;
ropelength = 4;

//Animate
image_speed = 0.1;

//Rope
rope = -1;

//Create rope
alarm[0] = 2;

//Play a sound
alarm[1] = 7;

/* */
/*  */
