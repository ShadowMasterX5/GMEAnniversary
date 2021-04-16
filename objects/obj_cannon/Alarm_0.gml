/// @description Shoot a cannonball

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//If the gray p-switch is active
if (obj_levelcontrol.gswitchon == true) {

    alarm[0] = 1;
    exit;
}

//Play 'Cannon' sound
audio_play_sound(snd_explode, 0, false);

//Create cannon ball
with (instance_create(x+8+lengthdir_x(8,direct),y+8+lengthdir_y(8,direct),obj_cannonball)) {

    motion_set(other.direct,1.5);
}

//Repeat after 3 seconds
alarm[0] = 180;

