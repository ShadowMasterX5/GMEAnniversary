/// @description Handles the Mario Start! text, room warping, music and timer.

//If the music is not the same as the music used in the last room
if (global.levelmusic != levelmusic) {

    //Stop the old music
    audio_stop_sound(global.levelmusic);

    //Set the new music
    global.levelmusic = levelmusic;    
}

//Set up the time for the level.
if (leveltime > 0) { //If the timer has been set.

    //If the global time for the level is equal to 0.
    if (global.time = 0) {
    
        global.time = leveltime;
        alarm[2] = 50;
    }
    
    //Otherwise, if the time has been set before.
    else if (global.time > 0)    
        alarm[2] = 50;
}

//If the player just started the level
if (global.mariostart == 0) {

    //The level has started
    global.mariostart = 1;
    
    //Handles checkpoints
    if (instance_exists(global.checkpoint)) {

        //Destroy all player objects
        event_user(4);
        
        //Create a new Mario at the desired location
        player_retrieve(global.checkpoint.xcoor,global.checkpoint.ycoor);
    }

    //Create the Mario Start! effect
    instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_mariostart);
}
else {

    //Fade out
    instance_create(0,0,obj_fadeout);
}

//If the player came from another room.
if (global.postchange != -1) {

    //Destroy all player objects
    event_user(4);
    
    //Main
    if (global.postchange == 0)
        player_retrieve(global.postx, global.posty); 
        
    //Warp
    else if (global.postchange = 1)
        with (instance_create(global.postx, global.posty, obj_player_warp)) ready = 1;
        
    //Jump
    else if (global.postchange = 2)
        instance_create(global.postx, global.posty, obj_player_jump);
        
    //Climb
    else if (global.postchange = 3)
        instance_create(global.postx, global.posty, obj_player_climb);
    
    //Make the player able to warp between rooms.
    global.postchange = -1;
}

//If the player was riding a shoe on the previous room, create one.
if (global.mount == 2)
    instance_create(x,y,obj_kuriboshoe);

//Otherwise, if the player was riding a yoshi, create one.
else if (global.mount == 1)
    instance_create(x,y,obj_yoshi);

//If the player carried an item through a pipe in the last room.
else if (global.carrieditem != noone) {

    //Create it
    with (instance_create(x,y,global.carrieditem)) {
    
        //Hold the item
        held = 1;
        
        //Set up the sprite
        if (global.carriedsprite != noone) {
        
            //Change the sprite of the held item
            sprite_index = global.carriedsprite;
            
            //Reset the sprite
            global.carriedsprite = noone;
        }
    }
    
    //Check what item is going to hold the item
    event_user(15);    
    
    //Check if the player exists and make it hold if so.
    if (instance_exists(obj_playerparent)) {
    
        //If the item held was a SMB2 one
        if (object_get_parent(global.carrieditem) == obj_parcarry) {
        
            //If the item held was a blue boomerang
            if (global.carrieditem == obj_boomerang_blue_up)
                obj_playerparent.holding = 3;
            else            
                obj_playerparent.holding = 1;
        }
        
        //Otherwise, if the item held was a SMB3 / SMW one
        else if (object_get_parent(global.carrieditem) == obj_parhold)
            obj_playerparent.holding = 2;
    }
    
    //Otherwise
    else {
    
        if (instance_exists(follow))
            follow.holding = 1;
    }

    //Reset held object
    global.carrieditem = noone;
}

//Turn on P-Switch if it was activated on the previous room.
if (global.pswitch > 0) {

    //Check ticks brought from last room
    if (global.pswitch < 120) {
    
        pwarning = 1;
    }    

    //Turn on the P-Switch
    event_user(5);
    
    //Set the timer
    alarm[5] = max(global.pswitch,30);
    
    //Reset the variable
    global.pswitch = 0;
}

//Turn on gray P-Switch if it was activated on the previous room.
if (global.gswitch > 0) {

    //Check ticks brought from last room
    if (global.gswitch < 120) {
    
        gwarning = 1;
    }    
    
    //Turn on the gray P-Switch
    event_user(6);
    
    //Set the timer
    alarm[6] = max(global.gswitch,30);
    
    //Reset the variable
    global.gswitch = 0;
}

//If a star was active on the previous room.
if (global.starman > 0) {

    //Create a new starman object.
    with (instance_create(0,0,obj_invincibility)) alarm[0] = max(global.starman,30);
    
    //Reset the variable
    global.starman = 0;
}

