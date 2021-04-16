/// @description Goal player logic

//Inherit step event
event_inherited();

//Close curtain and go to map
if (ready3 == 1)
&& (global.time == 0)
&& (!audio_is_playing(bgm_smwclear)) {

    //Close curtain
    ready3 = 2;
    
    //Create curtain effect
    instance_create(0,0,obj_curtaingoal);
}

//Make the screen fade out
if (ready2 == 1) {

    //If the fade object exists
    if (instance_exists(obj_fadegoal))
        with (obj_fadegoal) fade = 2;
}

//Increment speed
if (ready3 == 2) {

    //Build up some speed
    hspeed += 0.05;
    
    //Prevent it from going too fast
    if (hspeed > 1.75)
        hspeed = 1.75;
}

