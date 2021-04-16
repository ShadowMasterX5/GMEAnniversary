/// @description Clear the level

//Create goal mario
with (instance_create(other.x,other.y,obj_player_goal_smb3)) mygoal = other.id;

//Stop streams
audio_stop_sound(bgm_pswitch);
audio_stop_sound(bgm_starman);

//Stop both music and timer
with (obj_levelcontrol) {

    event_user(0);
    alarm[2] = 0;
}

//Clear the level
global.clear = 2;

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

//Card collected
ready = 1;

//Play stream
event_user(0);

//Get card
event_user(2);

//Destroy the player last
with (obj_playerparent) instance_destroy();

