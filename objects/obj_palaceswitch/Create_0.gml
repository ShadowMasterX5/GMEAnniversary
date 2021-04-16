/// @description Switch Palace

/*
**  This item uses creation code!
**
**  sprite_index = The switch of your choice
*/

//Do not animate
image_speed = 0;
image_index = 0;

//Whether the switch is pressed
ready = 0;

//Stay in ground
y++;

//Stream
stream = -1;

//Make solid mask
mysolid = instance_create(x,y,obj_solid);
    mysolid.image_xscale = 2;
    mysolid.image_yscale = 2;

/* */
/*  */
