/// @description The player has cleared the level by cutting a tape

//Set the jumping sprite if in air
if (gravity > 0) then sprite_index = scr_mario_jump();


//Stop both music and timer
with (obj_levelcontrol) {

    event_user(0);
    alarm[2] = 0;
}

//Clear the level
global.clear = 1;
if (obj_goalgate_front.sprite_index == spr_goalgate_secret)
    global.clear = 2;

//Anim
anim = 0;

//Do not flash
isflashing = 0;

//Set horizontal speed
hspeed = 0.324;

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

//States
ready = 0;
ready2 = 0;
ready3 = 0;
ready4 = 0;

//Stream
stream = -1;

//Play the clear stream
alarm[0] = 70

//Stop the player
alarm[2] = 460;

//Take points off time and add it to score
alarm[3] = 300;

//Whether the object is swimming
swimming = false;

//Create goal fade
instance_create(0,0,obj_fadegoal);

//Kill every enemy on screen
with (instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_powkiller)) 
    killtype = 1;

