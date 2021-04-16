/// @description Destroy shoe

//Dismount shoe
global.mount = 0;

//Stop 'Flying' sound
audio_stop_sound(snd_yoshi_lick);

//Destroy movement
with (movement) instance_destroy();

//Make both the player and yoshi do stuff
if (instance_exists(obj_playerparent)) {

    obj_playerparent.holding = 0;
    obj_playerparent.visible = 1;
}

