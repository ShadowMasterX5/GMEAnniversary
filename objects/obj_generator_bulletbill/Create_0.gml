/// @description Bullet bill Generator

/*
**  This item uses creation code!
**
**  xmin = Minimum x coordinate where this enemy is generated (Default: X)
**  xmax = Maximum x coordinate where this enemy is generated (Default: Room Width)
**  mode = Method of generation
**      0: Diagonal
**      1: Horizontal / Vertical
*/

//Default values
xmin = x;
xmax = room_width;
mode = 0;

//Start spawn
alarm[0] = 120;

/* */
/*  */
