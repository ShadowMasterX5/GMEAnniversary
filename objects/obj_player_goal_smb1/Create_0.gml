/// @description Player on the flagpole

//Default flagpole
flagpole = -1;

//Use the goal sprite
sprite_index = scr_mario_goal();

//Animate
image_speed = 0;
image_index = 0;

//Stop both music and timer
with (obj_levelcontrol) {

    event_user(0);
    alarm[2] = 0;
}

//Clear the level
global.clear = 1;
if (instance_exists(obj_flagpole_secret)) {

    global.clear = 2;
}

//Anim
anim = 0;

//Do not flash
isflashing = 0;

//Forget check points
global.checkpoint = noone;

//Do not bring kuribo shoes outside
if (global.mount == 2) {

    //Play 'Transform' sound
    audio_play_sound(snd_powerlost, 0, false);
    
    //Forget it
    global.mount = 0;
    
    //With the shoe
    with (obj_kuriboshoe) {
    
        //Create flying shoe
        with (instance_create(x,y,obj_kuriboshoe_lost)) {
        
            sprite_index = other.sprite_index;
            image_xscale = obj_playerparent.xscale;
            hspeed = obj_playerparent.xscale*-1;
        }
        
        //Destroy
        instance_destroy();
    }
}

//State
ready = 0;
ready2 = 0;
ready3 = 0;

//Stream
stream = -1;

//Hold a bit before going down
alarm[11] = 60;

//Whether the object is swimming
swimming = false;

//Kill every enemy on screen
with (instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_powkiller)) killtype = 1;

//Get number of fireworks
if ((global.time mod 10) == 6) 
    global.fireworks = 6;
else if ((global.time mod 10) == 3) 
    global.fireworks = 3;
else if ((global.time mod 10) == 1) 
    global.fireworks = 1;
    


