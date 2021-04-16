/// @description Player entering the hawkmouth

//Hawk used
myhawk = -1;

//Use the walk sprite
sprite_index = scr_mario_walk();

//Animate
image_speed = 0.1;

//Stop both music and timer
with (obj_levelcontrol) {

    event_user(0);
    alarm[2] = 0;
}

//Clear the level
global.clear = 1;

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

//Whether the player entered completely on the mouth
ready = 0;

//Allows to return to the map
ready2 = 0;
ready3 = 0;

//Stream
stream = -1;

//Play fanfare
alarm[0] = 2;

//Kill every enemy on screen
with (instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_powkiller))
    killtype = 1;

