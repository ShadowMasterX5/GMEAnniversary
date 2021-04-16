/// @description Bullet bill cannon

/*
**  This item uses creation code!
**
**  direct = Direction of the bullet bills
**      -1: Shoot left or right
**      -2: Shoot up or down
**      0: Right
**      90: Up
**      180: Left
**      270: Right
*/

//Default values:
direct = -1;

//Start shooting
alarm[0] = 90;

//Make this object solid
instance_create(x,y,obj_solid);

/* */
/*  */
