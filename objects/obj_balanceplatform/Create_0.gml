/// @description SMW Balance Lift

//Make it solid
instance_create(xstart,ystart,obj_solid);

//Chainlength
chainlength = 5;

//Direction
direction = 90;

//Speed
dirspd = 0;

//Create the platform
platform = instance_create(x,y,obj_balanceplatform_platform)
platform.creator = id;

//Platform variables
over_y = false;
dx = 0;
dy = 0;
new_x = 0;
new_y = 0;
old_x = 0;
old_y = 0;
    
//Center it
x = xstart+8;
y = ystart+8;

