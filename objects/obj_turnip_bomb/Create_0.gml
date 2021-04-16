/// @description A throwable bomb

//Inherit create event
event_inherited();

//Do not animate
image_speed = 0;
image_index = 0;

//Bomb timer
aa = 0;

//Create semisolid
mytop = instance_create(x,y,obj_enemytop);

