/// @description Deals with the music speed

//Play a warning sound when the P-Switch effect is running out
if (pwarning == 0) {

    //Check ticks
    if ((alarm[5] > 0) && (alarm[5] < 120)) {
    
        audio_play_sound(snd_warning, 0, false);
        pwarning = 1;
    }
}

//Play a warning sound when the G-Switch effect is running out
if (gwarning == 0) {

    //Check ticks
    if ((alarm[6] > 0) && (alarm[6] < 120)) {
    
        audio_play_sound(snd_warning, 0, false);
        gwarning = 1;
    }
}

//Pause the music if 'Hurry' is being played
if (audio_is_playing(snd_hurry)) {

    //Pause 'levelmusic'
    if (audio_is_playing(levelmusic)) 
        audio_pause_sound(levelmusic);
    
    //Pause 'bgm_starman'
    else if (audio_is_playing(bgm_starman))
        audio_pause_sound(bgm_starman);
    
    //Pause 'bgm_pswitch'
    else if (audio_is_playing(bgm_pswitch))
        audio_pause_sound(bgm_pswitch); 
}

else {

    //Set pitch of music at 1.3
    if (global.time > 0) 
    && (global.time < 101) {
        
        audio_sound_pitch(levelmusic, 1.25);
        audio_sound_pitch(bgm_starman, 1.25);
        audio_sound_pitch(bgm_pswitch, 1.25);    
    }
    
    //Otherwise, set pitch to 1.0
    else {
    
        audio_sound_pitch(levelmusic, 1);
        audio_sound_pitch(bgm_starman, 1);
        audio_sound_pitch(bgm_pswitch, 1);
    }

    //Resume 'levelmusic' if paused
    if (audio_is_paused(levelmusic)) 
        audio_resume_sound(levelmusic);
    
    //Resume 'bgm_starman' if paused
    else if (audio_is_paused(bgm_starman))
        audio_resume_sound(bgm_starman);
    
    //Resume 'bgm_pswitch' if paused
    else if (audio_is_paused(bgm_pswitch))
        audio_resume_sound(bgm_pswitch);
}

///Deals with various game logic stuff

//Check what object to follow
event_user(2);

//If the autoscroll object exists
if (instance_exists(obj_autoscroll)) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {

        //If the camera is locked.
        if (camlock) {
        
            //Set the x position of the camera.
            x = obj_autoscroll.x;
            
            //If the player speed is the maximum possible...
            if (((obj_playerparent.run)
            
            //...and the player has one of the following powerups...
            && ((global.powerup == cs_leaf)
            || (global.powerup == cs_tanooki)))
            
            //...or the player is riding something that is flying
            || (((instance_exists(obj_yoshi)) && (obj_yoshi.flying == 1))
            || (instance_exists(obj_kuriboshoe)) && (obj_kuriboshoe.flying == 1))) {
            
                //Set the y position of the camera
                y = obj_playerparent.y;
                
                //Set the vertical speed of the view
                __view_set( e__VW.VSpeed, 0, 4 );
            }
            
            //Otherwise, if the player is climbing up a beanstalk or a fence.
            else if (obj_playerparent.state == 3) {
            
                //Set the y position of the camera
                y = obj_playerparent.y;
                
                //Set the vertical speed of the view
                __view_set( e__VW.VSpeed, 0, 4 );                   
            }
            
            //Otherwise, if the player is not doing anything stated above and the view is above the view start position.
            else {
            
                //If the player is colliding with a moving platform
                if (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom+1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+2,obj_platformparent,0,0)) 
                && (obj_playerparent.state < 2) {
                
                    //Set the y position of the camera
                    y = obj_playerparent.y;
                    
                    //Set the vertical speed of the view
                    __view_set( e__VW.VSpeed, 0, 4 );
                }
                
                //Otherwise
                else if (__view_get( e__VW.YView, 0 ) < room_height-216) {
            
                    //Set the y position of the camera
                    y = obj_playerparent.y;
                    
                    //Set the vertical speed of the view
                    __view_set( e__VW.VSpeed, 0, -1 );           
                }
            }        
        }
        
        //Otherwise, if the camera is not locked.
        else {
        
            //Set the x position of the camera.
            x = obj_autoscroll.x;
        
            //Set the y position of the camera.
            y = obj_autoscroll.y;                
        }
    }
    
    //Otherwise, follow the rest of objects
    else if (instance_exists(follow)) {
    
        //Check what object the camera must follow
        event_user(2);
    
        //If the camera is locked.
        if (camlock) {
        
            //Set the x position of the camera.
            x = follow.x;
        
            //Set the y position of the camera.
            if (__view_get( e__VW.YView, 0 ) < room_height-216)            
                y = follow.y;
        }
        
        //Otherwise, if it's not locked.
        else {
        
            //Set the x position of the camera.
            x = follow.x;
        
            //Set the y position of the camera.
            y = follow.y;            
        }     
        
        //Set the view speed
        __view_set( e__VW.HSpeed, 0, 4 );
        __view_set( e__VW.VSpeed, 0, 4 );   
    }
}

//Follow main player
else if (instance_exists(obj_playerparent)) {

    //Handle camera position
    event_user(3);
        
    //Make sure the barrier is not active
    if (barrier == 0) 
    && (instance_number(obj_gotomap) == 0) {
         
        //Prevent the player from going outside the left boundary
        if (obj_playerparent.x < __view_get( e__VW.XView, 0 )+5) {
        
            //Snap the player 5 pixels at the left of the boundary
            obj_playerparent.x = __view_get( e__VW.XView, 0 )+5;
            
            //Stop Mario's horizontal movement
            if (obj_playerparent.xspeed < 0) {
            
                //Stop horizontal movement
                obj_playerparent.xspeed = 0;
                
                //Stop sliding if necessary
                if (obj_playerparent.sliding) {
                
                    //Stop sliding
                    sliding = false;
                    
                    //Free 'Down' key
                    keyboard_clear(global.downkey);
                }
            }
            
            //End dropdown
            if (instance_exists(obj_dropdown))
                with (obj_dropdown) instance_destroy();
        }
        
        //Otherwise, prevent the player from going outside the right boundary
        else if (obj_playerparent.x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-5) {
        
            //Snap the player 5 pixels at the left of the boundary
            obj_playerparent.x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-5;
            
            //Stop Mario's horizontal movement
            if (obj_playerparent.xspeed > 0) {
            
                //Stop horizontal movement
                obj_playerparent.xspeed = 0;
                
                //Stop sliding if necessary
                if (obj_playerparent.sliding) {
                
                    //Stop sliding
                    sliding = false;
                    
                    //Free 'Down' key
                    keyboard_clear(global.downkey);
                }
            }
                        
            //End dropdown
            if (instance_exists(obj_dropdown))
                with (obj_dropdown) instance_destroy();
        }
    }
}

//Follow rest of player objects
else if (instance_exists(follow)) {

    //Check what object the camera must follow
    event_user(2);

    //If the camera is locked.
    if (camlock) {
    
        //Set the x position of the camera.
        x = follow.x;
    
        //Set the y position of the camera.
        if (__view_get( e__VW.YView, 0 ) < room_height-216)            
            y = follow.y;
    }
    
    //Otherwise, if it's not locked.
    else {
    
        //Set the x position of the camera.
        x = follow.x;
    
        //Set the y position of the camera.
        y = follow.y;            
    }
}

//Round position
x = round(x);
y = round(y);

//Get a extra life if 100 coins are collected
if (global.coins > 99) {

    //If lives are maxed out, keep them at 99.
    if (lives >= 99)
        global.coins = 99;
        
    //Otherwise, give a extra life and reset the counter.
    else {
    
        //Subtract 100 coins
        global.coins -= 100;
        
        //If there's not spare lifes
        if (obj_persistent.addlives == 0) {
        
            //Play '1up' sound
            audio_play_sound(snd_1up, 0, false);
        
            //Add a life instantly
            lives++;
        }
        else {
        
            //Add a spare life
            with (obj_persistent) {
            
                addlives++;
                alarm[2] = 30;
            }
        }
    }
}

//Allow the player to either drop the reserve item or pause the game.
if (barrier == 0) 
&& (instance_exists(obj_playerparent)) 
&& (obj_playerparent.disablecontrol == false) {

    //If there's a item in reserve and the player presses the reserve key.
    if (keyboard_check_pressed(global.spacekey))
    && (global.reserve > cs_small)
        event_user(1);
        
    //If the 'Enter' key is pressed and the player controls are not disabled
    if (keyboard_check_pressed(global.enterkey))
    && (!keyboard_check(vk_alt))
    && (!instance_exists(obj_pausemenu))
        instance_create(0,0,obj_pausemenu);
}

//Make sure to reset the mount colour
if (global.mount == 0)
&& (global.mountcolour > 0)
    global.mountcolour = 0;

//Deactivate instances outside the view
instance_deactivate_object(obj_deactenemyparent);
instance_deactivate_object(obj_deactivateparent);

//Activate deactivated instances inside the view
instance_activate_region(__view_get( e__VW.XView, 0 )-40, __view_get( e__VW.YView, 0 )-32, __view_get( e__VW.WView, 0 )+40, __view_get( e__VW.HView, 0 )+32, true);

