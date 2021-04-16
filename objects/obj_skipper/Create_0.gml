/// @description Gatete Mario Engine Anniversary Edition disclaimer notice

//Go to the next room
alarm[0] = 300;

//Play sound
alarm[1] = 2;

//Fade out
if (instance_number(obj_fadeout) == 0)
    instance_create(0,0,obj_fadeout);

