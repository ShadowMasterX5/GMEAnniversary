/// @description The player when it's running on walls or ceilings

//Destroy spinner object
with (obj_spinner) instance_destroy();

//Make player invisible
with (obj_playerparent) {

    visible = false;
    disablecontrol = true;
}

//Sprite
sprite_index = scr_mario_run();

//Angle
angle = 0;

//Speed
speed = obj_playerparent.walkspeed+0.4;

//Direction
direction = 90;

//Whether the player can turn
ready = false;

//Set angle
alarm[0] = 4;

//Allow turn
alarm[1] = 16;

//Default direction
//-1: Counter clockwise
//1: Clockwise
xscale = 1;

