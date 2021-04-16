/// @description Enemy Generator

/*
**  This item uses creation code!
**
**  object  = Enemy to generate
**
**  delay   = How many time should each enemy appear?
**
**  dir     = Pick from below
**      0:    Right
**      1:    Up
**      2:    Left
**      3:    Down
**
**  spd     = Speed of the resulting enemy
*/

//Default values
object = obj_goomba;
delay = 120;
dir = 0;
spd = 0.5;

//Manage movement
ready = 0;

//Scale
xscale = 1;

//Set depth
depth = 10;

//Do not animate
image_speed = 0;
image_index = 0;

//Previous delay (It increments as long the player is visible)
delayprev = 0;

/* */
/*  */
