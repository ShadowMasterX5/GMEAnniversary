/// @description Parabeetle logic

//Handle flight
event_user(8);

//Facing direction
xscale = 1*sign(hspeed);

//Handle the animation of the parabeetle
if (ready)
    image_speed = 0.3;
else
    image_speed = 0.15;

