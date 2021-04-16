/// @description Yoshi logic

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //Snap into the player
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //Force the player to be invisible
    obj_playerparent.visible = 0;
    
    //Force the player to hold something
    obj_playerparent.holding = 4;
        
    //If Yoshi is not licking and control is pressed.
    if (keyboard_check_pressed(global.controlkey))
    && (licking == 0)
    && (obj_playerparent.disablecontrol == 0) {
    
        //If the mouth is empty, start licking.
        if (mouthholder == noone) {
        
            //Play 'Lick' sound
            if (!audio_is_playing(snd_yoshi_lick)) {
            
                audio_play_sound(snd_yoshi_lick, 0, false);
            }
            
            //Start licking
            licking = 1;
            alarm[0] = 5;
            
            //Animation
            anim = 0;
            
            //Lock the tounge in position
            if ((keyboard_check(global.upkey)) || (jumping > 0)) {
            
                //If the player is not crouched down
                if (!obj_playerparent.crouch)
                    locked = 1;
                else
                    locked = 2;
            }
            else
                locked = 2;
        }
        
        //Otherwise, spit out the item.
        else
            event_user(0);
    }
    
    //Make Yoshi flutter if moving down and if the player does not have either the raccoon or tanooki powerup
    if (keyboard_check(global.shiftkey))
    && (flying == 0)
    && (global.powerup != cs_leaf)
    && (global.powerup != cs_tanooki)
    && (obj_playerparent.crouch == false)
    && (obj_playerparent.swimming == false) {
    
        //If Yoshi can flutter and it is moving down
        if (flutter == 0)
        && (obj_playerparent.yspeed >= 2.5) {
        
            //Play 'Hover' sound
            audio_play_sound(snd_yoshi_hover, 0, false);
         
            //Allow fluttering   
            flutter = 1;
        }
            
        //If Yoshi is fluttering
        else if (flutter = 1) {
        
            //Increment flutter time
            fluttertime += 2;
            
            //If flutter time is lower than 120
            if (fluttertime < 120) {
            
                //Make the player ascend
                with (obj_playerparent) {
                
                    //Disable gravity
                    ygrav = 0;
                
                    //Increment vertical movement
                    if (yspeed > 0)
                        yspeed -= 0.15;
                    else {
                    
                        yspeed -= 0.05;
                        if (yspeed < -1.5)
                            yspeed = -1.5;
                    }
                }
            }
            else {
            
                //Stop 'Hover' sound
                audio_stop_sound(snd_yoshi_hover);
            
                //End flutter
                flutter = 2;
                
                //Allow flutter after a while
                alarm[4] = 30;
            }
        }
    }
    else if (flutter == 1) 
    || (obj_playerparent.yspeed < -1.6) {
            
        //Stop 'Hover' sound
        audio_stop_sound(snd_yoshi_hover);
            
        //End flutter
        flutter = 2;
        
        //Allow flutter after a while
        alarm[4] = 30;
    }
    
    //Force end flutter if not jumping
    if (flutter == 1)
    && (obj_playerparent.state != 2) {
            
        //Stop 'Hover' sound
        audio_stop_sound(snd_yoshi_hover);
            
        //End flutter
        flutter = 2;
        
        //Allow flutter after a while
        alarm[4] = 30;
    }
    
    //Depth
    depth = -4;
    
    //Manage Yoshi state
    if (mouthholder)
        event_user(3);
    
    //Mask
    obj_playerparent.mask_index = spr_bigmask;
    
    //Check if the player is jumping and make yoshi set up his jump pose if so.
    if ((obj_playerparent.state == 2) || (obj_playerparent.delay > 0))    
        jumping = 1;
        
    //Otherwise, if the player is not jumping
    else {
    
        //Stop 'Hover' sound
        audio_stop_sound(snd_yoshi_hover);
        
        //End jumping
        jumping = 0;
        
        //Allow fluttering        
        flutter = 0;
        if (fluttertime > 0)
            fluttertime = 0;
    }
}

//Otherwise, if the player does not exist.
else {

    //Do not hold anything if the player cleared a level
    if (instance_exists(obj_playerparent_clear)) {
    
        if (mouthholder != noone) {
        
            mouthholder = noone;
            mouthsprite = noone;
        }
    }

    //Find a suitable player
    event_user(15);
    
    //If said player object exists, follow him
    if (instance_exists(follow)) {
    
        //Snap onto this object
        x = follow.x;
        y = follow.y;
        
        //Set the same depth as the other object
        depth = follow.depth;
    }
}

//Stop 'Flutter' sound if yoshi is not fluttering
if (flutter != 1)
&& (audio_is_playing(snd_yoshi_hover))
    audio_stop_sound(snd_yoshi_hover);

///Yoshi animation

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If yoshi is licking.
    if (licking) {
    
        //If the 'Up' key is being held or Yoshi is jumping.
        if (locked == 1) {
        
            //If yoshi is fluttering
            if (flutter == 1) {
            
                //Set the sprite
                sprite_index = spr_yoshi_flutter_lick;                         
                
                //Animate
                image_speed = 0.3;                    
            }
            
            //Otherwise
            else {
            
                //Set the sprite
                sprite_index = spr_yoshi_swallow;
                
                //Do not animate
                image_speed = 0;
                
                //Set the frame
                if (obj_playerparent.yspeed != 0) {
                
                    if (obj_playerparent.yspeed < 0)
                        image_index = 1;
                    else if (obj_playerparent.yspeed > 0)
                        image_index = 2;
                }
                else
                    image_index = 0;
            }
        }
            
        //Otherwise, if the player is not moving vertically
        else {
            
            //Set the sprite
            sprite_index = spr_yoshi_lick;
            
            //Do not animate
            image_speed = 0;
            
            //Set the frame
            image_index = anim;
        }
    }
    
    //Otherwise, if Yoshi is not licking.
    else if (!licking) {
    
        //If the player is crouched down or it's sliding down a slope.
        if (obj_playerparent.crouch) 
        || (obj_playerparent.sliding) {
        
            //If Yoshi is holding something on his mouth.
            if (mouthholder != noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_fm_wait;
        
                //Do not animate
                image_speed = 0;
                image_index = 2;
            }
            
            //Otherwise, if Yoshi is not holding anything on his mouth.
            else if (mouthholder == noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_wait;
                
                //Do not animate
                image_speed = 0;
                image_index = 0;
            }
        }
        
        //Otherwise, if the player is not crouched down.
        else {
    
            //If the player is idle.
            if (obj_playerparent.state == 0) {
            
                //If Yoshi is holding something on his mouth.
                if (mouthholder != noone) {
                
                    //Set the sprite
                    sprite_index = spr_yoshi_fm;
                    
                    //Do not animate
                    image_speed = 0;
                    image_index = 0;
                }
                
                //Otherwise, if Yoshi is not holding anything on his mouth.
                else if (mouthholder == noone) {
                
                    //Set the sprite
                    sprite_index = spr_yoshi;
                    
                    //Do not animate
                    image_speed = 0;
                    image_index = 0;                
                }
            }
            
            //Otherwise, if the player is moving.
            else if (obj_playerparent.state == 1) {
            
                //If Yoshi is holding something on his mouth.
                if (mouthholder != noone) {
                
                    //Set the sprite
                    sprite_index = spr_yoshi_fm;
                    
                    //Animate
                    if (!collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom,obj_slippery,0,1))
                        image_speed = 0.065+abs(obj_playerparent.xspeed)/7.5;
                    else
                        image_speed = 0.130+abs(obj_playerparent.xspeed)/7.5;
                }
                
                //Otherwise, if Yoshi is not holding anything on his mouth.
                else if (mouthholder == noone) {
                
                    //Set the sprite
                    sprite_index = spr_yoshi;
                    
                    //Animate
                    if (!collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom,obj_slippery,0,1))
                        image_speed = 0.065+abs(obj_playerparent.xspeed)/7.5;
                    else
                        image_speed = 0.130+abs(obj_playerparent.xspeed)/7.5;                    
                }
            }
            
            //Otherwise, if the player is moving upwards.
            else if (obj_playerparent.state == 2) {
            
                //If Yoshi is holding something on his mouth.
                if (mouthholder != noone) {
                
                    //If Yoshi is fluttering
                    if (flutter == 1) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_fm_flutter;
                        
                        //Animate
                        image_speed = 0.3;
                    }
                    else {
                
                        //Set the sprite
                        sprite_index = spr_yoshi_fm_jump;
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //Set the frame
                        if (obj_playerparent.yspeed < 0)
                            image_index = 0;
                        else
                            image_index = 1;
                    }
                }
                
                //Otherwise, if Yoshi is not holding anything on his mouth.
                else if (mouthholder == noone) {
                
                    //If Yoshi is fluttering
                    if (flutter == 1) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_flutter;                         
                        
                        //Animate
                        image_speed = 0.3;                                      
                    }
                    
                    else {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_jump;
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //Set the frame
                        if (obj_playerparent.yspeed < 0)
                            image_index = 0;
                        else
                            image_index = 1;   
                    }                                 
                }
            }
        }
    }
}

///Player animation

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //Set the position
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //If Yoshi is extending it's tongue
    if (licking) {
    
        //If the player has either the raccoon or tanooki powerup
        if (global.powerup == cs_leaf) || (global.powerup == cs_tanooki) {
        
            //If Yoshi is jumping
            if (jumping == 0) {
            
                //If Yoshi is crouching to lick something
                if (sprite_index == spr_yoshi_lick)
                    f = 4+obj_playerparent.wiggle/4;
                else
                    f = 0+obj_playerparent.wiggle/4;
            }
            
            //Otherwise
            else {
            
                if (locked == 2)
                    f = 4+obj_playerparent.wiggle/4;
                else
                    f = 0+obj_playerparent.wiggle/4;
            }
        }
        
        //Otherwise, if the player does not have any of the above powerups.
        else {
        
            //If Yoshi is not jumping
            if (jumping == 0) {
                
                //If Yoshi is crouching to lick something
                if (sprite_index == spr_yoshi_lick)
                    f = 1;
                else
                    f = 0;
            }
            
            //Otherwise
            else {
            
                if (locked == 2)
                    f = 1;
                else
                    f = 0;
            }
        }
    }
    
    //Otherwise, if Yoshi is not extending it's tongue
    else {
    
        //If the player has either the raccoon or tanooki powerup.
        if (global.powerup == cs_leaf) || (global.powerup == cs_tanooki) {
        
            //If the player is crouched down or sliding down a slope
            if (obj_playerparent.crouch) || (obj_playerparent.sliding)
                f = 4+obj_playerparent.wiggle/4;
            
            //Otherwise...
            else            
                f = 0+obj_playerparent.wiggle/4;
        }
    
        else {
        
            //If the player is crouched down or sliding down a slope
            if (obj_playerparent.crouch) || (obj_playerparent.sliding) 
                f = 1;
    
            //Otherwise, set the default frame
            else          
                f = 0;
        }
    }
    
    //Set the depth
    depth = -5;
    
    //Set the facing direction
    image_xscale = obj_playerparent.xscale;
}

//Set up the y position for Mario
if (sprite_index == spr_yoshi)
|| (sprite_index == spr_yoshi_fm) {

    if (image_index > 0.99)
        myy = 1;
    else
        myy = 0;
}
else
    myy = 0;

