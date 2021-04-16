/// @description Shoot a cannonball out of the cannon

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//If the gray p-switch is active
else if (obj_levelcontrol.gswitchon == true) {

    alarm[0] = 1;
    exit;
}

//Play 'Cannon' sound
audio_play_sound(snd_explode, 0, false);

//Shoot again
alarm[0] = 240

//Create a bullet
with (instance_create(x,y,obj_cannonball_large))
    hspeed = 3*sign(other.direct);

