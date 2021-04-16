/// @description Wallrunner logic

//If the player does not exist...
if (!instance_exists(obj_playerparent))

//...or the player is transforming
|| (instance_exists(obj_player_transform)) {

    //Destroy
    instance_destroy();
    
    //Exit
    exit;
}

//Update sprite
sprite_index = scr_mario_run();

//Animation
image_speed = 0.4;

//Snap player
obj_playerparent.xspeed = 0;
obj_playerparent.yspeed = 0;
obj_playerparent.x = x;
obj_playerparent.y = y;

//Jumping
if (keyboard_check_pressed(global.shiftkey)) {

    //Play 'Jump' sound
    audio_play_sound(snd_jump, 0, false);
    
    //If the player is running up a wall, jump off the wall
    if (direction == 90) {

        with (obj_playerparent) {
        
            yspeed = other.vspeed;
            xspeed = -3*other.xscale;
            xscale = -xscale;
            angle = 45;
            alarm[4] = 8;
        }
    }
    
    //If the player is running down a wall, jump off the wall
    else if (direction == 270) {
    
        with (obj_playerparent) {
        
            yspeed = other.vspeed;
            xspeed = 3*other.xscale;
            xscale = -xscale;
            angle = 315;
            alarm[4] = 8;
        }
    }
    
    //If the player is running on the ceiling, jump off
    else {
    
        with (obj_playerparent) {
        
            xspeed = other.hspeed;
            yspeed = 3;
            angle = 180-(45*other.xscale);
            alarm[4] = 8;
        }
    }
    
    //Destroy
    instance_destroy();
}

//If the player is running in a clockwise movement
else if (xscale > 0) {

    //If both 'Control' and 'Right' are held
    if ((keyboard_check(global.controlkey)) && (keyboard_check(vk_right)))
        speed += .1;
    else
        speed -= .05;
        
    //If the player is running upwards
    if (direction == 90) {
    
        //If the player can turn and there's not a wall at the right
        if (ready)
        && (!collision_rectangle(bbox_right+4,bbox_top,bbox_right+8,bbox_bottom,obj_solid,0,0)) {
        
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed;
                angle = 45;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();
        }
    }
    
    //Otherwise, if the player is running on a ceiling
    else if (direction == 180) {
    
        //If the player can turn and there's not a ceiling in place
        if (ready)
        && (!collision_rectangle(bbox_left-8,bbox_top,bbox_left-4,bbox_bottom,obj_solid,0,0)) {
        
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed*-1;
                angle = 135;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();
        }
        
        //Check for a inverted right wall triangle
        var col = collision_line(bbox_left,y-20,bbox_right,y-16,obj_walltriangle_ir,0,0);
        if (col) {
        
            //Snap on triangle
            x = col.x-15;
            y = col.y+15;
            
            //Direction
            direction = 90;
            
            //Disallow turn
            ready = 0;
            
            //Angle
            angle = 135;
            
            //Set angle
            alarm[0] = 4;
            
            //Allow turn
            alarm[1] = 16;
        }
    }
    
    //If the player is running downwards
    else if (direction == 270) {
    
        //If the player can turn and there's no wall in place
        if (ready)
        && (!collision_rectangle(bbox_left-8,bbox_top,bbox_left-4,bbox_bottom,obj_solid,0,0)) {
        
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed*-1;
                angle = 315;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();
        }
        
        //Check for a inverted left wall triangle
        var col = collision_line(x-20,y,x-16,y,obj_walltriangle_il,0,0);
        if (col) {
        
            //Snap on triangle
            x = col.x+31;
            y = col.y+31;
            
            //Direction
            direction = 180;
            
            //Disallow turn
            ready = false;
            
            //Angle
            angle = 225;
            
            //Set angle
            alarm[0] = 4;
            
            //Allow turn
            alarm[1] = 24;
        }
        
        //Check for a left wall triangle
        var col = collision_rectangle(x-16,y,x,y,obj_walltriangle_l,0,0);
        if (col)
        && (ready) {
    
            //Snap onto triangle
            x = col.xstart+15;
            y = col.ystart;
        
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed;
                angle = 315;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();        
        }
    }
}

//If the player is running on a counter-clockwise movement
else if (xscale < 0) {

    //If both 'Control' and 'Left' are held
    if ((keyboard_check(global.controlkey)) && (keyboard_check(global.leftkey)))
        speed += .1;
    else
        speed -= .05;
        
    //If the player is running upwards
    if (direction == 90) {
    
        //If the player can turn and there's not a wall at the right
        if (ready)
        && (!collision_rectangle(bbox_left-8,bbox_top,bbox_left-4,bbox_bottom,obj_solid,0,0)) {
        
            //With the player
            with (obj_playerparent) {

                xspeed = other.speed*-1;
                angle = 315;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();
        }
    }
    
    //Otherwise, if the player is running on a ceiling
    else if (direction == 0) {
    
        //If the player can turn and there's not a ceiling in place
        if (ready)
        && (!collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top-1,obj_solid,0,0)) {
        
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed;
                angle = 45;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();
        }
        
        //Check for a inverted right wall triangle
        var col = collision_line(x,y-20,x,y-16,obj_walltriangle_il,0,0);
        if (col) {
        
            //Snap on triangle
            x = col.x+31;
            y = col.y;
            
            //Direction
            direction = 90;
            
            //Disallow turn
            ready = 0;
            
            //Angle
            angle = 45;
            
            //Set angle
            alarm[0] = 4;
            
            //Allow turn
            alarm[1] = 16;
        }
    }
    
    //If the player is running downwards
    else if (direction == 270) {
    
        //If the player can turn and there's no wall in place
        if (ready)
        && (!collision_rectangle(bbox_right+4,bbox_top,bbox_right+8,bbox_bottom,obj_solid,0,0)) {
        
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed;
                angle = 135;
                alarm[4] = 4;
            }
            
            //Destroy
            instance_destroy();
        }
        
        //Check for a inverted left wall triangle
        var col = collision_line(x+16,y,x+20,y,obj_walltriangle_ir,0,0);
        if (col) {
        
            //Snap on triangle
            x = col.x-15;
            y = col.y+31;
            
            //Direction
            direction = 0;
            
            //Disallow turn
            ready = false;

            //Angle
            angle = 315;
            
            //Set angle
            alarm[0] = 4;
            
            //Allow turn
            alarm[1] = 24;
        }
        
        //Check for a right wall triangle
        var col = collision_line(x,y,x+16,y,obj_walltriangle_r,0,0);
        if (col) 
        && (ready) {
        
            //Snap onto the triangle
            x = col.xstart;
            y = col.ystart;
            
            //With the player
            with (obj_playerparent) {
            
                xspeed = other.speed*-1;
                angle = 225;
                alarm[4] = 4;
            }
        
            //Destroy
            instance_destroy();
        }
    }    
}

//If the player slowsdown or makes contact with a solid
if (speed < (obj_playerparent.walkspeed+0.3)) 
|| ((ready) && (position_meeting(x,y,obj_solid))) {

    //With the player
    with (obj_playerparent) {
    
        xspeed = other.hspeed;
        yspeed = other.vspeed;
        angle = other.direction-45;
        alarm[4] = 4;
    }
    
    //Destroy
    instance_destroy();
}

//Cap maximum speed
if (speed > obj_playerparent.runspeed)
    speed = obj_playerparent.runspeed;

