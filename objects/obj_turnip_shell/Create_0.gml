/// @description A throwable shell

//Inherit create event
event_inherited();

//Do not animate
image_speed = 0;
image_index = 0;

//Whether this object can harm the player
harmplayer = 0;

//Create semisolid
mytop = instance_create(x,y,obj_semisolid);

