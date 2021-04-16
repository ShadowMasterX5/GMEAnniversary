/// @description Spit a ball

//Shoot a ball in the facing direction
with (instance_create(x+4*sign(xscale),y+12,obj_snifit_ball)) hspeed = 1.5*other.xscale;

//Repeat the process
alarm[10] = 32;

