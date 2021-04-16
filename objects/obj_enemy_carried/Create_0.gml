/// @description A throwable picked up enemy

//Enemy respawn variable
turnback = -1;
if (global.turnback != -1) {

    turnback = global.turnback;
    global.turnback = -1;
}

//Inherit create event
event_inherited();

//Timer for bombs
aa = 0;

//Animate
image_speed = 0.2;

//Check sprite
alarm[11] = 1;

