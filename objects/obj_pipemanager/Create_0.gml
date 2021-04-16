/// @description Map pipe manager

/*
**  This object uses creation code!
**
**  destx[0] = X coordinate of the left pipe
**  desty[0] = Y coordinate of the left pipe
**  destdir[0] = Exit direction of the left pipe
**  destx[1] = X coordinate of the right pipe
**  desty[1] = Y coordinate of the right pipe
**  destdir[1] = Exit direction of the right pipe
*/

//Default variables
for (i=0; i<2; i++) {

    destx[i] = 0;
    desty[i] = 0;
    destdir[i] = 0;
}

//Stream
alarm[0] = 1;

//Create player object
alarm[1] = 2;

//Create controller object
if (!instance_exists(obj_levelcontrol))
    instance_create(0,0,obj_levelcontrol);

/* */
/*  */
