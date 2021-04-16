/// @description Destroy Yoshi

if (instance_exists(obj_keyhole))
&& (obj_keyhole.ready != 0)
exit;

//Dismount Yoshi
global.mount = 0;

//Stop 'Flying' sound
audio_stop_sound(snd_yoshi_lick);

//Stop 'Flutter' sound
audio_stop_sound(snd_yoshi_hover);

//Destroy Yoshi's tongue if it exists
with (obj_tongue) instance_destroy();

//Make both the player and yoshi do stuff
if (instance_exists(obj_playerparent)) {

    obj_playerparent.holding = 0;
    obj_playerparent.visible = 1;
    if (mouthholder != noone)
        event_user(0);
}

