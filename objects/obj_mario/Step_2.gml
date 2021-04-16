/// @description Mario's animation

//Reset up firing
if (firing > 0)
&& (state == 1)
    firing = 0;

//If Mario is crouched down
if (crouch == true) {

    //If Mario has the leaf or tanooki powerups
    if ((global.powerup == cs_leaf) || (global.powerup == cs_tanooki)) {
    
        //Do not animate unless the script permits it.
        image_speed = 0;
    
        //Check if Mario is holding something first.
        if (holding == 0)
            image_index = 0+(wiggle/4);
        else if (holding == 2)
            image_index = 5+(wiggle/4);
        else
            image_index = 4;
    }
    else {
    
        //Do not animate
        image_speed = 0;
        
        //Set up the correct frame
        if (holding = 0)
            image_index = 0;
        else {
        
            if (holding == 2)
                image_index = 2;
            else
                image_index = 1;
        }
    }
    
    //Set the sprite
    sprite_index = scr_mario_duck();
    
    //Do not skid
    skidnow = 0;
    
    //Set the mask
    mask_index = spr_mask;
    
    //Stop 'Skid' sound
    if (audio_is_playing(snd_skid))
        audio_stop_sound(snd_skid);
}
else {

    //If Mario is not holding anything
    if (holding == 0) {
    
        //If Mario is not sliding down a slope
        if (!sliding) {
        
            //If Mario is not kicking/throwing something.
            if (!kicking) {
            
                //If Mario is not doing anything
                if (state == 0) {
                
                    //If Mario is firing something
                    if (firing > 0) 
                    && (sprite_index != scr_mario_somersault()) {
                    
                        //Set the sprite
                        sprite_index = scr_mario_shoot();
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //Decrement fire
                        firing--;
                        
                        //...but set the appropiate frame
                        if (firing > 4)
                            image_index = 0;
                        else
                            image_index = 1;
                    }
                    else {
                    
                        //Set the sprite
                        sprite_index = scr_mario_walk();
                        
                        //Do not animate
                        image_speed = 0;
                        image_index = 0;
                    }
                }
                
                //Otherwise, if Mario is walking
                else if (state == 1) {
                
                    //Check first the horizontal speed and facing direction of Mario.
                    if ((((xspeed > 0.1) && (xscale == -1))
                    || ((xspeed < -0.1) && (xscale == 1)))
                    && (!swimming)
                    && (global.powerup != cs_frog)
                    && (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0))) {
                    
                        //Set the skidding sprite
                        sprite_index = scr_mario_skid();
                        
                        //Do not animate
                        image_speed = 0;
                        image_index = 0;
                        
                        //Play 'Skid' sound
                        if (!audio_is_playing(snd_skid))
                            audio_play_sound(snd_skid, 0, true);
                    }
                    
                    //Set the animation speed
                    else {
                        
                        //If Mario does not have the frog powerup
                        if (global.powerup != cs_frog)
                        && (global.powerup != cs_penguin)
                            image_speed = isinice() * 0.065+abs(xspeed)/7.5;
                            
                        //Otherwise, if Mario does have the frog suit.
                        else if (global.powerup == cs_frog) {
                            
                            //If Mario is swimming
                            if (swimming) {
                            
                                //If Mario is not holding anything.
                                if (holding == 0) {
                                
                                    if (xspeed == 0)
                                        image_speed = 0.1;
                                    else
                                        image_speed = 0.1+(0.1*keyboard_check(global.controlkey));
                                }
                                else
                                    image_speed = isinice() * 0.065+abs(xspeed)/7.5;
                            }
                            
                            //Otherwise, if Mario is not swimming
                            else {
                            
                                if (holding == 0)
                                    image_speed = 0.1;
                                else
                                    image_speed = isinice() * 0.065+abs(xspeed)/7.5;
                            }                        
                        }
                        
                        //Otherwise, if Mario does have the penguin suit.
                        else if (global.powerup == cs_penguin) {
                            
                            //If Mario is swimming
                            if (swimming) {
                            
                                //If Mario is not holding anything.
                                if (holding == 0) {
                                
                                    if (xspeed == 0)
                                        image_speed = 0.1;
                                    else
                                        image_speed = 0.1+(0.1*keyboard_check(global.controlkey));
                                }
                                else
                                    image_speed = isinice() * 0.065+abs(xspeed)/7.5;
                            }
                            
                            //Otherwise, if Mario is not swimming
                            else
                                image_speed = isinice() * 0.065+abs(xspeed)/7.5;                         
                        }
                    
                        //If Mario is running
                        if (run)                     
                            sprite_index = scr_mario_run();
                        else {
                                             
                            if ((global.powerup == cs_frog)
                            || (global.powerup == cs_penguin))
                            && (swimming)
                                sprite_index = scr_mario_swim();
                            else
                                sprite_index = scr_mario_walk();
                        }
                    }
                }
                
                //Otherwise, if Mario is jumping
                else if (state == 2) {
                
                    //If Mario is shooting a projectile
                    if (firing > 0) 
                    && (sprite_index != scr_mario_somersault()) {
                    
                        //Set the sprite
                        sprite_index = scr_mario_shoot();
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //Decrement fire
                        firing--;
                        
                        //...but set the appropiate frame
                        if (firing > 4)
                            image_index = 2;
                        else
                            image_index = 3;                    
                    }
                
                    //Otherwise, if Mario is not shooting a projectile.
                    else {
                        
                        //If Mario is not swimming
                        if (!swimming) {
                        
                            //If Mario is doing a spinjump
                            if (stompstyle > 0) {
                            
                                //If Mario does have the propeller suit
                                if (global.powerup == cs_propeller) {
                                
                                    //Check if the 'Down' key is pressed
                                    if ((yspeed < 0) || (keyboard_check(global.downkey))) {
                                    
                                        //Set the special spinning sprite
                                        sprite_index = scr_mario_spin2();
                                        
                                        //Animate it
                                        image_speed = 0.065+abs(yspeed)/7.5;;
                                    }
                                    else {
                                    
                                        //Set the walking sprite
                                        sprite_index = scr_mario_spin();
                                        
                                        //Animate it
                                        image_speed = 0.2;
                                    }
                                }
                                
                                //If Mario does not have the propeller or cat suit
                                else {
                                
                                    //Set the spinning sprite
                                    sprite_index = scr_mario_spin();
                                    
                                    //Animate it
                                    image_speed = 0.5;
                                }
                            }
                            
                            //If Mario is not doing a spin jump
                            else {
                            
                                //If the player is doing a somersault
                                if (somersault) {
                                
                                    //Set up the somersault sprite
                                    sprite_index = scr_mario_somersault();
                                    
                                    //Do not animate
                                    image_speed = 0;
                                    image_index = 0;
                                }
                             
                                else {
                                
                                    //If Mario does have the carrot powerup
                                    if (global.powerup == cs_carrot) {
                                    
                                        //If Mario is wallclimbing
                                        if (wallkick == 1) {
                                        
                                            //Set the sprite
                                            sprite_index = scr_mario_walljump();
                                            
                                            //Do not animate
                                            image_speed = 0;
                                            image_index = 0;
                                        }
                                        
                                        //Otherwise, if it's not
                                        else {
                                    
                                            //If Mario is moving up
                                            if (yspeed < 0)
                                                image_index = 0;
                                            else {
                                            
                                                if (floatnow > 0)
                                                    image_speed = 0.15;
                                                else {
                                                
                                                    if (run)
                                                        image_index = 0;
                                                    else
                                                        image_index = 1;
                                                }
                                            }
                                            
                                            //If Mario is running
                                            if (!run)
                                                sprite_index = scr_mario_jump();
                                            else
                                                sprite_index = scr_mario_runjump();
                                        }
                                    }
                                    
                                    //Else, if Mario does have the bee powerup
                                    else if (global.powerup == cs_bee) {
                                    
                                        //If Mario is wallclimbing
                                        if (wallkick == 1) {
                                        
                                            //Set the sprite
                                            sprite_index = scr_mario_walljump();
                                            
                                            //Do not animate
                                            image_speed = 0;
                                            image_index = 0;                                
                                        }
                                        else {
                                        
                                            //If Mario is moving down
                                            if (yspeed > 0)
                                                image_index = 1;
                                            else {
                                            
                                                if (floatnow > 0)
                                                    image_speed = 0.15;
                                                else if (yspeed < -1.1)
                                                    image_index = 0;
                                            }
                                                                                
                                            //If Mario is running
                                            if (!run)
                                                sprite_index = scr_mario_jump();
                                            else
                                                sprite_index = scr_mario_runjump();
                                        }
                                    }
                                    
                                    //Otherwise, if Mario does not have any of the above powerups
                                    else {
                                    
                                        //Do not animate
                                        image_speed = 0;
                                        
                                        //If Mario does have the frog powerup
                                        if (global.powerup == cs_frog) {
                                        
                                            //If Mario is wallclimbing
                                            if (wallkick == 1) {
                                            
                                                //Set the sprite
                                                sprite_index = scr_mario_walljump();
                                                
                                                //Do not animate
                                                image_speed = 0;
                                                image_index = 0;
                                            }
                                            
                                            //Otherwise, if it's not wallclimbing
                                            else {
                                    
                                                //Set the sprite
                                                sprite_index = scr_mario_walk();
                                            
                                                //Set up the frame
                                                image_index = 2;
                                            }
                                        }
                                        
                                        //Otherwise, if Mario does not have the frog powerup
                                        else {
                                        
                                            //If Mario is wallclimbing
                                            if (wallkick == 1) {
                                            
                                                //If Mario does have the Cat powerup
                                                if (global.powerup == cs_cat) {
                                                
                                                    //Set the alt climbing sprite
                                                    sprite_index = spr_mario_cat_climb2;
                                                    
                                                    //Animate
                                                    if (yspeed < 0) 
                                                        image_speed = 0.15;
                                                    else {
                                                    
                                                        image_speed = 0;
                                                        image_index = 0;
                                                    }
                                                }
                                                else {
                                                
                                                    //Set the skid sprite
                                                    sprite_index = scr_mario_walljump();
                                                    
                                                    //Do not animate
                                                    image_speed = 0;
                                                    image_index = 0;
                                                }
                                            }
                                            else {    
                                    
                                                //...but set the appropiate frame
                                                if (yspeed < 0) {
                                                
                                                    if ((global.powerup == cs_leaf)
                                                    || (global.powerup == cs_tanooki))
                                                        image_index = 0+(wiggle/4);
                                                    else
                                                        image_index = 0;
                                                }
                                                else {
                                                
                                                    //If Mario is running
                                                    if (run)
                                                        image_index = 0+(wiggle/4);
                                                    else
                                                        image_index = 1+(wiggle/4);
                                                }
                                                
                                                //Set the appropiate sprite
                                                if (!run)
                                                && (global.pwing == 0)
                                                    sprite_index = scr_mario_jump();
                                                else
                                                    sprite_index = scr_mario_runjump(); 
                                            }
                                        }
                                    }
                                }                 
                            }
                        }
                        
                        //Otherwise, if Mario is swimming
                        else if (swimming) {
                        
                            //If Mario does have either the frog or penguin powerups.
                            if (global.powerup == cs_frog)
                            || (global.powerup == cs_penguin) {
                            
                                //If Mario is swimming to the sides
                                if (swimtype == 0) {
                                
                                    //Set up the sprite
                                    sprite_index = scr_mario_swim();
                                
                                    //...and animate it
                                    if (xspeed == 0)
                                        image_speed = 0.1;
                                    else
                                        image_speed = 0.1+(0.1*keyboard_check(global.controlkey));
                                }
                                
                                //Otherwise, if Mario is swimming upwards
                                else if (swimtype == 1) {
                                
                                    //Set up the sprite
                                    sprite_index = scr_mario_swim2();
                                    
                                    //Set the speed
                                    if ((x != xprevious) || (y != yprevious))
                                        image_speed = 0.1+(0.1*keyboard_check(global.controlkey));
                                    else
                                        image_speed = 0;
                                }
                                
                                //Otherwise, if Mario is swimming downwards
                                else if (swimtype == 2) {
                                
                                    //Set up the sprite
                                    sprite_index = scr_mario_swim3();
                                    
                                    //Set the speed
                                    if ((x != xprevious) || (y != yprevious))
                                        image_speed = 0.1+(0.1*keyboard_check(global.controlkey));
                                    else
                                        image_speed = 0;
                                }
                            }
                            
                            //Otherwise, if Mario does not have any of the above powerups
                            else {
                            
                                //Set up the sprite
                                sprite_index = scr_mario_swim();
                                
                                //Set the speed
                                if (yspeed < 0)
                                    image_speed = 0.15;
                                else {
                                
                                    image_speed = 0;
                                    image_index = 0;
                                }
                            }
                        }
                    }
                }
                
                //Otherwise, if Mario is climbing
                else if (state == 3) {
                
                    //Set up the sprite
                    sprite_index = scr_mario_climb();
                    
                    //Set the speed
                    if ((xspeed != 0) || (yspeed < 0))
                        image_speed = 0.15;
                    else {
                    
                        image_speed = 0;
                        image_index = 0;
                    }
                }
            }
            
            //Otherwise, if Mario is kicking or throwing something
            else if (kicking > 0) {
            
                //Set up the sprite
                sprite_index = scr_mario_kick();
                
                //Set the frame
                image_speed = 0;
                if ((kicking == 1) || (kicking == 3))
                    image_index = 0;
                else
                    image_index = 1;
            }
        }
        
        //Otherwise, if Mario is sliding down a slope
        else if (sliding) {
        
            //If Mario does have the shell powerup
            if (global.powerup == cs_shell) {
            
                //If the sprite is not the sliding one
                if (sprite_index != scr_mario_slide()) {
                
                    //Set up the sprite
                    sprite_index = scr_mario_slide();
                    
                    //Set up the frame
                    if (image_index != 0)
                        image_index = 0;
                }
                
                //Animate
                image_speed = isinice() * 0.065+abs(xspeed)/7.5;
            }
            else {
                
                //Set up the sprite
                sprite_index = scr_mario_slide();
                
                //Do not animate
                image_speed = 0;
                image_index = 0;
            }
        }
    }
    
    //Otherwise, if Mario is carrying something over his head
    else if (holding == 1) {
    
        //Set up the sprite
        sprite_index = scr_mario_carry();
        
        //If Mario is not walking
        if (state == 0) {
        
            //Do not animate
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, if Mario is walking
        else if (state == 1) {
        
            //Set the animation speed
            image_speed = isinice() * 0.065+abs(xspeed)/7.5;
        }
        
        //Otherwise, if Mario is jumping
        else if (state == 2) {
        
            //If Mario does have either the carrot or bee powerup.
            if (global.powerup == cs_carrot) 
            || (global.powerup == cs_bee) {
            
                //If Mario is floating
                if (floatnow > 0)
                    image_speed = 0.15;
                else {
                
                    image_speed = 0;
                    image_index = 0;
                }
            }
            
            //Otherwise, if Mario does have either the raccoon or tanooki powerup.
            else if (global.powerup == cs_leaf)
            || (global.powerup == cs_tanooki) {
            
                image_speed = 0;
                image_index = 0+(wiggle/4);
            }
            
            //Otherwise, do not animate
            else {
            
                image_speed = 0;
                image_index = 1;
            }
        }
    }
    
    //Otherwise, if Mario is holding something at his front
    else if (holding == 2) {
        
        //If Mario is not walking
        if (state == 0) {
        
            //Do not animate
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, if Mario is walking
        else if (state == 1) {
        
            //If Mario is not turning
            if (!turning)
                image_speed = isinice() * 0.065+abs(xspeed)/7.5;
                
            //Otherwise, if Mario is turning
            else {

                image_speed = 0;
                image_index = 0;
            }
        }
        
        //Otherwise, if Mario is jumping
        else if (state == 2) {
        
            //If the player is not turning
            if (!turning) {
            
                //If Mario does have either the carrot or bee powerup.
                if (global.powerup == cs_carrot) 
                || (global.powerup == cs_bee) {
                
                    //If Mario is floating
                    if (floatnow > 0)
                        image_speed = 0.15;
                    else {
                    
                        image_speed = 0;
                        image_index = 0;
                    }
                }
                
                //Otherwise, if Mario does have either the raccoon or tanooki powerup.
                else if (global.powerup == cs_leaf)
                || (global.powerup == cs_tanooki) {
                
                    image_speed = 0;
                    image_index = 0+(wiggle/4);
                }
                
                //Otherwise, do not animate
                else {
                
                    image_speed = 0;
                    image_index = 1;
                }
            }
            
            //Otherwise, set turning pose
            else {
            
                image_speed = 0;
                image_index = 0;
            }
        }
        
        //Set the sprite
        if (!turning)
            sprite_index = scr_mario_hold();
        else
            sprite_index = scr_mario_spin();
    }
    
    //Otherwise, if Mario is carrying a boomerang
    else if (holding == 3) {
    
        //Set up the sprite
        sprite_index = scr_mario_hold2();
        
        //If Mario is not walking
        if (state == 0) {
        
            //Do not animate
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, if Mario is walking
        else if (state == 1) {
        
            //Set the animation speed
            image_speed = isinice() * 0.065+abs(xspeed)/7.5;
        }
        
        //Otherwise, if Mario is jumping
        else if (state == 2) {
        
            //If Mario does have either the carrot or bee powerup.
            if (global.powerup == cs_carrot) 
            || (global.powerup == cs_bee) {
            
                //If Mario is floating
                if (floatnow > 0)
                    image_speed = 0.15;
                else {
                
                    image_speed = 0;
                    image_index = 0;
                }
            }
            
            //Otherwise, if Mario does have either the raccoon or tanooki powerup.
            else if (global.powerup == cs_leaf)
            || (global.powerup == cs_tanooki) {
            
                image_speed = 0;
                image_index = 0+(wiggle/4);
            }
            
            //Otherwise, do not animate
            else {
            
                image_speed = 0;
                image_index = 1;
            }
        }
    }
    
    //Set the mask
    if (global.powerup == cs_small)
        mask_index = spr_mask;
    else {
    
        //If Mario does have the frog powerup.
        if (global.powerup == cs_frog) {
        
            if (holding > 0)
                mask_index = spr_bigmask;
            else
                mask_index = spr_mask;
        }
        
        //Otherwise, if Mario does have the either the shell or penguin powerups.
        else if (global.powerup == cs_shell) 
        || (global.powerup == cs_penguin) {
        
            //If Mario is sliding down a slope
            if (sliding) {
            
                //If Mario does not have the shell powerup
                if (global.powerup != cs_shell)
                    mask_index = spr_mask;
                else {
                
                    if (xspeed == 0)
                        mask_index = spr_mask;
                    else
                        mask_index = spr_shellmask;
                }
            }
            
            //Otherwise, set the default mask
            else
                mask_index = spr_bigmask;
        }
        
        //Otherwise, set the default mask
        else
            mask_index = spr_bigmask;
    }
    
    //Stop the 'Skid' sound when not changing direction.
    if (sprite_index != scr_mario_skid())
    && (audio_is_playing(snd_skid))
        audio_stop_sound(snd_skid);
}                  

