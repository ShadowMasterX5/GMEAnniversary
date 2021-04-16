/// @description End boss logic

//When visible
if (visible == 1) {

    //If Mario touches it
    if (place_meeting(x,y,obj_playerparent)) {

        //Dissapear
        visible = 0;
        instance_create(x-8,y,obj_smoke);

        //Boss clear music
        audio_play_sound(bgm_sm3clear_c, 1, false);

        //Disable Mario's controls
        with (obj_playerparent) disablecontrol = true;

        //Clear the level
        global.clear = 1;

        //Clear checkpoints
        global.checkpoint = noone;

        //Stop timer
        obj_levelcontrol.alarm[1] = 1;
        obj_levelcontrol.alarm[2] = 0;

        //Start timer countdown
        alarm[0] = 350;
    }
}

//Execute default event
event_inherited();

