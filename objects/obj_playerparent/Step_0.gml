/// @description Physics

//Manage P-Wing effect
if (global.pwing == 1) {

    //If the player does not have either raccoon or tanooki powerup
    if (global.powerup != cs_leaf)
    && (global.powerup != cs_tanooki) {
    
        //Disable P-Wing
        global.pwing = 0;
        
        //Allow the player to fly again.
        flying = false;
        
        //Reset P-Meter
        pmeter = 0;
    }
    
    //Keep pmeter active
    pmeter = 112;
    
    //Play 'P-Meter' sound if not playing
    if (!audio_is_playing(snd_pmeter)) 
        audio_play_sound(snd_pmeter, 0, true);
    
    //Keep alarm 9 active 
    alarm[9] = 60 * global.flighttime;
    
    //If the player is flying
    if (state != 2) && (global.pwing == 1)
        flyfix = 0;
    else
        flyfix = 1;
}

//Otherwise
else {

    if ((state != 2) && (flying == 0))
        flyfix = 0;
    else
        flyfix = 1;
}

//If the gravity is enabled
if (enable_gravity == 1) {

    //Reset gravity, hspeed and vspeed as they are unused on the player.
    gravity = 0;
    hspeed = 0;
    vspeed = 0;
    
    //Move the player based on the values of xspeed, yspeed and ygrav
    x += xspeed;
    y += yspeed;
    yspeed += ygrav;
    
    //Change the angle when doing a somersault
    if (state == 2) 
    && (crouch == 0)
    && (holding == 0)
    && (wallkick == 0)
    && (swimming == 0)
    && (stompstyle == 0) {
    
        //If the player is doing a somersault
        if (somersault)    
            angle -= 30*sign(xscale);
    }
    else {
    
        somersault = 0;
        if (angle != 0)
            angle = 0;
    }
    
    //Decrement net smack
    if (netsmack > 0)
        netsmack--;
        
    //Decrement stun time
    if (stuntime > 0) {
    
        //If the stuntime is about to end
        if (stuntime == 1) {
        
            //Stop stun
            stuntime = 0;
            shake = 0;
            
            //Enable controls
            disablecontrol = false;
        }
        
        //Decrement stuntime
        stuntime--;
        
        //Shake if possible
        shake = -shake;
    }
    
    //Decrement freeze time
    if (freezetime > 1) {
    
        //Decrement freezetime
        freezetime--;
        
        //Do not move
        xspeed = 0;
        yspeed = 0;
        ygrav = 0;
    
        //Unfreeze when 'freezetime' hits 1
        if (freezetime == 1) {
        
            //Play 'Shatter' sound
            audio_play_sound(snd_shatter, 0, false);
            
            //Create sparklies
            repeat (32) {
    
                with (instance_create(bbox_left+sprite_width/2-4,bbox_top+sprite_height/2-4,obj_smoke)) {
                
                    //Sprite
                    sprite_index = spr_icespark;
                    
                    //Animate
                    image_speed = 0.1;
                    
                    //Motion
                    motion_set(random(360), random(1));
                }
            }
        
            //Stop freeze
            freezetime = 0;
            
            //Enable controls
            disablecontrol = false;
            
            //Make invulnerable for less time
            invulnerable = 1;
            alarm[0] = 90;
            alarm[1] = 1;
        }
    }
    
    //Make sure the player is doing a spinjump
    if (global.powerup != cs_propeller)
    && (stompstyle == 2)
        stompstyle = 1;
        
    //Make sure the player does not spinjump when holding something
    if ((holding > 0) && (holding < 4))
    && (stompstyle > 0)
        stompstyle = 0;
    
    //Mute 'Bump' sound when climbing or when the player is swimming with the frog or penguin powerup
    if (state == 3)
    || ((state == 2) && (swimming) && ((global.powerup == cs_frog) || (global.powerup == cs_penguin)))
        noisy = 1;
    else
        noisy = 0;
    
    //Floor collision
    if (yspeed > 0) { //If the player is moving down and the gravity is not disabled.
    
        //Check for a semisolid object
        var semisolid = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+yspeed,obj_semisolid,0,0);
        
        //If the semisolid exists and the player is above it.
        if (semisolid)
        && (bbox_bottom < semisolid.yprevious+5) {
        
            //Snap above the semisolid platform
            y = semisolid.y-16;
            
            //Stop vertical movement
            yspeed = 0;
            ygrav = 0;
            
            //Reset values
            event_user(15);
        }
        
        //Check for a enemy that is solid on top
        var enemy = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+yspeed,obj_enemytop,0,0);
        
        //If the enemy exists and the player is above it
        if (enemy)
        && (bbox_bottom < enemy.yprevious+5) {
        
            //Snap above the semisolid platform
            y = enemy.y-16;
            
            //Stop vertical movement
            yspeed = 0;
            ygrav = 0;
            
            //Reset values
            event_user(15);
        }
    }
        
    //Embed the player into the slope if he is walking or sliding down a slope to ensure correct slope physics.
    if ((collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+4,obj_slopeparent,1,0)) 
    && (!collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom-4,obj_slopeparent,1,0)))
    && (state == 1)
        y += 4;
    
    //Handle slope collision
    if (collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom,obj_slopeparent,1,0)) 
    && (!collision_rectangle(x-1,bbox_bottom-8,x+1,bbox_bottom-8,obj_slopeparent,1,0)) {
    
        //If the player is moving down onto a slope.
        if (yspeed > 0) {
        
            //Stop vertical movement
            yspeed = 0;
            ygrav = 0;
            
            //Reset values
            event_user(15);
        }
        
        //Prevent the player from getting embed inside a slope.
        if (yspeed > -0.85)        
            while (collision_rectangle(x-1,bbox_bottom-4,x+1,bbox_bottom,obj_slopeparent,1,0))        
                y--;
    }
    
    //Left conveyor belt collision
    lconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_l,0,0);
    if ((lconv) && (lconv.image_speed != 0)) {
    
        if (!collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))
            x -= 0.75;
    }
    
    //Right conveyor belt collision
    rconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_r,0,0);
    if ((rconv) && (rconv.image_speed != 0)) {
    
        if (!collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0))
            x += 0.75;
    }
    
    //If the player is not swimming
    if (!swimming) {
    
        //If the player is not sliding
        if (!sliding) {
    
            //If the player is not climbing
            if (state != 3) {
        
                //Execute main behaviour script
                scr_player_behaviour();
                
                //Execute the wall collision checking script
                scr_player_behaviour_wall()
                
                //If the player is running on walls or ceilings
                if (instance_exists(obj_wallrunner)) 
                && (global.mount != 2) {
                
                    //If the P-Meter is full.
                    if (pmeter > 112) {
                    
                        //Play 'P-Meter' sound
                        if (!audio_is_playing(snd_pmeter)) {
                        
                            audio_play_sound(snd_pmeter, 0, true);
                        }
                        
                        //Keep P-Meter full.
                        pmeter = 112;
                    
                        //Make the player able to run.
                        run = true;
                    }
                    
                    //Otherwise, fill P-Meter
                    else
                        pmeter += 2;
                }
                
                //Otherwise...
                else {
                
                    //If the player's horizontal speed is equal/greater than 2.4 and it's not wearing a kuribo shoe.
                    if (abs(xspeed) > runspeed-0.1) 
                    && (global.mount != 2) 
                    || (global.pwing == 1) {
                    
                        //If the player is not jumping.
                        if (state < 2) {
                        
                            //If the P-Wing is active
                            if (global.pwing == 1) {
                            
                                //Play 'P-Meter' sound
                                if (!audio_is_playing(snd_pmeter)) {
                                
                                    audio_play_sound(snd_pmeter, 0, true);
                                    if (pmeter < 112)
                                        pmeter = 112;
                                }                                
                            }
                            
                            //Otherwise
                            else {
                        
                                //If the P-Meter is full.
                                if (pmeter > 112) {
                                
                                    //Play 'P-Meter' sound
                                    if (!audio_is_playing(snd_pmeter)) {
                                    
                                        audio_play_sound(snd_pmeter, 0, true);
                                    }
                                    
                                    //Keep P-Meter full.
                                    pmeter = 112;
                                
                                    //Make the player able to run.
                                    run = true;
                                }
                                
                                //Otherwise, fill P-Meter
                                else
                                    pmeter += 2;
                            }
                        }
                        
                        //If the player is on the ground and not running.
                        else if ((!run) && (pmeter > 0))
                            pmeter--;
                    }
                    
                    //Otherwise, if the player's horizontal speed is lower than 2.4
                    else if ((!run) || ((state < 2) && (abs(xspeed) < runspeed)) && (global.pwing == 0)) { 
                    
                        //If the player is flying and lands on the floor.
                        if (flying) {
                        
                            //Stop 'P-Meter' sound
                            audio_stop_sound(snd_pmeter);
                            
                            //Allow the player to fly again.
                            flying = false;
                            
                            //Make the player walk
                            run = false;
                            
                            //Empty P-Meter.
                            if (pmeter > 0)        
                                pmeter --;
                        }
                        
                        //If the player is not flying.
                        else if (!flying) {
                        
                            //Stop 'P-Meter' sound
                            audio_stop_sound(snd_pmeter);
                                                
                            //Make the player walk
                            run = false;
                            
                            //Restart flying.
                            alarm[9] = 0;
                            
                            //Empty P-Meter.
                            if (pmeter > 0)       
                                pmeter --;
                        }   
                    }
                }
            }
            
            //Otherwise, if the player is climbing.
            else if (state == 3) {
            
                //Execute climb behaviour script
                scr_player_behaviour_climb();
                
                //Smack net if possible
                if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_climb_net,0,0))
                && (keyboard_check_pressed(global.controlkey))
                && (netsmack == 0) {
                
                    //Play 'Bump' sound
                    audio_play_sound(snd_bump, 0, false);
                
                    //Increment netsmack
                    netsmack = 4;
                    
                    //Change facing direction
                    xscale = -xscale;
                }
                
                //Stop P-Meter if not permanent
                if (global.pwing == 0) {
                
                    //Stop 'P-Meter' sound
                    audio_stop_sound(snd_pmeter);
                                                                    
                    //Decrement P-Meter
                    flying = false;
                    run = false;
                    if (pmeter > 0)
                        pmeter--;
                }
            }
        }
        
        //Otherwise, if the player is sliding down a slope
        else if (sliding) {
        
            //Execute slide behaviour script
            scr_player_behaviour_slide();
            
            //Stop P-Meter if not permanent
            if (global.pwing == 0) {
            
                //Stop 'P-Meter' sound
                audio_stop_sound(snd_pmeter);
                                                                
                //Decrement P-Meter
                flying = false;
                run = false;
                if (pmeter > 0)
                    pmeter--;
            }
        }
    }
    
    //Otherwise, if the player is actually swimming.
    else if (swimming) {
        
        //Execute swim behaviour script
        scr_player_behaviour_swim();
            
        //Stop P-Meter if not permanent
        if (global.pwing == 0) {
        
            //Stop 'P-Meter' sound
            audio_stop_sound(snd_pmeter);
                                                            
            //Decrement P-Meter
            flying = false;
            run = false;
            if (pmeter > 0)
                pmeter--;
        }
    }
    
    //If the player is bumping into a wall to the right
    if (xspeed > 0)
    && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-4,obj_solid,1,0)) {
    
        //If the player is sliding with the shell
        if (global.powerup == cs_shell)
        && (global.mount == 0)
        && (sliding) {
        
            //Play 'Bump' sound
            if (!audio_is_playing(snd_bump)) {
            
                audio_play_sound(snd_bump, 0, false);
            }
        
            //Reverse horizontal speed
            xspeed = -xspeed;
            
            //Create shell thump effect
            instance_create(x+5,y+8,obj_shellbump);
            
            //Create block bumper object
            instance_create(x-8,y,obj_blockbumper);
        }
            
        //Otherwise, stop it and stop slide if necessary.
        else {
        
            //Stop horizontal movement
            xspeed = 0;
            
            //Stop sliding
            sliding = false;       
        }
        
        //Prevent the player from getting embed into the wall
        while (collision_rectangle(bbox_right,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,1,0))
        && (!collision_point(x,bbox_top+4,obj_solid,0,0))
            x--;
    }
    
    //Otherwise, if the player is bumping into a wall to the left
    else if (xspeed < 0)
    && (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0)) {
    
        //If the player is sliding with the shell
        if (global.powerup == cs_shell)
        && (global.mount == 0)
        && (sliding) {
            
            //Play 'Bump' sound
            if (!audio_is_playing(snd_bump)) {
            
                audio_play_sound(snd_bump, 0, false);
            }
        
            //Reverse horizontal speed
            xspeed = -xspeed;
            
            //Create shell thump effect
            instance_create(x-5,y+8,obj_shellbump);
                    
            //Create block bumper object
            instance_create(x-8,y,obj_blockbumper);
        }
    
        //Otherwise, stop it and stop slide if necessary.    
        else {
        
            //Stop horizontal movement
            xspeed = 0;
            
            //Stop sliding
            sliding = false; 
        }        
        
        //Prevent the player from getting embed into the wall
        while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))
        && (!collision_point(x,bbox_top+4,obj_solid,0,0))
            x++;
    }
    
    //If the player is moving up
    if (yspeed < 0)
    && ((collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,1,0)) 
    || (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_ceilslopeparent,1,0))) {
        
        //Prevent the player's head from getting stuck on a ceiling.
        if (state > 1) {
    
            while ((collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_solid,1,0))
            || (collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_ceilslopeparent,1,0)))
                y++;
        }
        
        //Stop vertical speed
        yspeed = 0;
        
        //Check if there's a block on the way.
        var block = collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top,obj_blockparent,1,0);
        
        //If there's a block on the way.
        if (block) {
            
            //If the block has NOT been hit.
            if (block.ready == 0) {
        
                //Trigger block events
                with (block) {
                
                    //Block is hit
                    ready = 1;
                    
                    //Set vertical speed
                    vspeed = -2;
                    alarm[0] = 4;
                    
                    //Block specific events
                    event_user(0);
                }
            }
        }
        
        //If the player does not have either the frog and penguin suit, and it's not climbing.
        if (!noisy)
        && (state < 3) {
        
            //Max out the bee flying timer
            if (global.powerup == cs_bee) {
    
                beefly = 128;
            }
            
            //Stop variable jumping
            jumpnow = 2;        
            
            //Play 'Bump' sound
            if (!audio_is_playing(snd_bump))        
                audio_play_sound(snd_bump, 0, false);        
        }
    }
    
    //Prevent the player from overlapping ceiling slopes
    if (state > 1) {
    
        while (collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_ceilslopeparent,1,0))
            y++;            
    }
    
    //If the player is not climbing
    if (state != 3) {
    
        //If the player's controls are not disabled and it's not jumping
        if (state != 2)
        && (!sliding)
        && (!disablecontrol) {
        
            //Make the player crouch down when the 'Down' key is held
            if (keyboard_check(global.downkey))
            && (global.powerup != cs_frog)
            && (!crouch)
            && (!noisy)
                crouch = true;
                
            //Otherwise, if the 'Down' key is no longer pressed
            else if (!keyboard_check(global.downkey))
                crouch = false;
        }
        
        //Handles powerup specific projectiles, tail spinning, cat scratching and statue morphing.
        if (keyboard_check_pressed(global.controlkey)) 
        && (!obj_levelcontrol.barrier)
        && (!disablecontrol)
            alarm[11] = 1;
    }
    else {
    
        //Make the player get up
        crouch = false;
        
        //Stop special jump
        stompstyle = false;
    }
    
    //Check for a nearby swimming surface
    var water = collision_rectangle(bbox_left,y-1,bbox_right,y,obj_swim,1,0);
    
    //If the player is not swimming and makes contact with a water surface
    if ((!swimming) && (water)) {
        
        //Make the player swim.
        swimming = true;
        swimtype = 0;
        
        //Make the player get up
        crouch = false;
        
        //Stop most horizontal movement
        xspeed = xspeed/2.5;
                
        //Stop vertical movement
        ygrav = 0;
        if (yspeed > 0) {
        
            //Stop vertical movement
            yspeed = 0;
            
            //Create a splash effect if not in contact with a bubble
            if (water.object_index != obj_waterbubble) {
            
                with (instance_create(x-8,water.y-15,obj_smoke)) {
                
                    depth = -4;
                    sprite_index = spr_splash;
                }            
            }
        }
    }
    
    //Otherwise, if the player had enough swimming and wants to get out
    else if ((swimming) && (!water)) {
    
        //If there's not water above and there's not a solid on the way out
        if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,1,0)) {
        
            //If the player is moving up
            if ((state == 2) && (yspeed < 0)) {
            
                //If 'Shift' is held
                if (keyboard_check(global.shiftkey)) {
                
                    //Play 'Jump' sound
                    audio_play_sound(snd_jump, 0, false);
                    
                    //Make the player not swim
                    swimming = false;
                    
                    //Allow variable jump
                    jumping = 1;
                    
                    //Set the vertical speed
                    yspeed = -3.4675;
                    
                    //Create splash effect
                    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_waterbubble,1,0)) {
                    
                        with (instance_create(x-8,y-15,obj_smoke)) {
                        
                            depth = -4;
                            sprite_index = spr_splash;
                        }
                    }
                }
                
                //Otherwise, if 'Shift' is not held.
                else {
                
                    //If the player is moving up.
                    if (yspeed < 0)
                        yspeed = 0;
                }
            }
        }
    }
        
    //Free the player is he is stuck on a solid.
    if (yspeed == 0)
    && (crouch == false) 
    && (mask_index == spr_bigmask) {
        
        //If the player gets stuck
        if (collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_top+4,obj_solid,1,0)) 
        && (inwall == 0) {
        
            //If the direction was not set
            if (direct2 == 0) {
            
                //Set it up
                direct2 = xscale;
            }
            
            //Begin movement
            inwall = 1;
            
            //Set the movement direction
            direct = -direct2;
        }
        
        //Otherwise, if the player gets stuck on a wall.
        else if (inwall == 1) {
            
            //Move the player until it's not embed in a wall.
            x += 1*sign(direct);       
            
            //If the player is not longer embed on a wall, make him able to move.
            if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,1,0)) {
            
                inwall = 0;
                direct2 = 0;
            }
            
            //If the player collides with a wall while being stuck
            if ((direct == -1) && (collision_line(bbox_left,y+4,bbox_left,bbox_bottom-4,obj_solid,1,0)))
            || ((direct == 1) && (collision_line(bbox_right,y+4,bbox_right,bbox_bottom-4,obj_solid,1,0)))
                direct = -direct;
        }
    }
    
    //Unstuck in case of overlapping a solid completely
    if (state < 2)
    && (inwall == 0) {
    
        //If overlapping
        while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_mblock,0,0))
        || (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_propellerblock,0,0))
            y--;
    }
        
    //Handle tail whip animation
    if ((state == 2) && (wiggle > 0))
        wiggle--;
    else
        wiggle = 0;
    
    //If the player is not in contact with water.
    if (!collision_rectangle(bbox_left,y,bbox_right,bbox_bottom,obj_swim,0,0)) {
    
        //If the player is swimming.
        if (swimming)  
            swimming = false;
    }
    
    //Prevent the player from going too high on the level
    if (y < -96)
        y = -96;
        
    //Otherwise, if he is falling.
    else {
    
        //If the player is below the bottom room boundary and didn't activate a warp, restart the room.
        if (bbox_bottom > room_height+32) {
                    
            if (pitwarp == false) {
            
                instance_create(x,y,obj_player_dead);
                instance_destroy();
                exit;  
            }
            
            else {
            
                //Force the player to fall.
                vspeed = 4;
            }       
        }
    }
}

