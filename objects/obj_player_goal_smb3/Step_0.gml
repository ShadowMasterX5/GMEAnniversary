/// @description Player logic

//Inherit step event
event_inherited();

//Update yoshi
anim += 0.2;

//Make it move when landed
if (gravity == 0)
    hspeed = 1.5;

