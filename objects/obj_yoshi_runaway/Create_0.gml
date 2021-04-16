/// @description A runaway Yoshi

//Default colour
colour = 0;

//Animate
image_speed = 0.3

//Facing direction + move Mario up
if (instance_exists(obj_playerparent)) {

    //Hereby scale
    xscale = obj_mario.xscale;
    
    //With the player
    with (obj_playerparent) {
    
        yspeed = -4;
        visible = true;
    }
}
else
    xscale = 1;

//Run away
hspeed = xscale*2;

//Reset Yoshi
global.mount = 0;

//Yoshi is hurt
audio_play_sound(snd_yoshi_hurt,0,0)

//State variable
ready = 0;

//Make Yoshi ridable again
alarm[0] = 80;

//Alpha blink
alarm[1] = 1;

//Inherit the default event
event_inherited();

