/// @description Egg logic

//Inherit the event
event_inherited();

//Check if the egg is on the ground
if (!ready) 
&& (vspeed == 0) {

    //Hatch it
    ready = 1;
    alarm[0] = 16;
}

