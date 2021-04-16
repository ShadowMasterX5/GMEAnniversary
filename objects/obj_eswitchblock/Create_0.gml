/// @description A non-carryable !-Switch

/*
**  This item uses creation code!
**
**  destroy = To make this switch usable one time.
*/

//Default value
destroy = false;

//Do not animate
image_speed = 0;
image_index = 0;

//Whether this switch has been pressed
ready = 0;

//Make it solid
mysolid = instance_create(x,y,obj_solid);

/* */
/*  */
