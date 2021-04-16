/// @description Blue beach koopa logic

//Inherit event
event_inherited();

//Sliding logic
if (ready == 0) {
    
    //Slow down
    hspeed = max(0,abs(hspeed)-0.05)*sign(hspeed);
    
    //If the koopa is about to stop
    if (hspeed < 0.05) 
    && (hspeed > -0.05) {
        
        //Stop it
        hspeed = 0;
        
        //Allow movement
        ready = 1;
        
        //Start moving
        alarm[10] = 10;
    }
}

//Otherwise, check for shells
else if (ready > 0) {

    //If the koopa just came out from the shell, do not allow it to enter.
    if (sprite_index == spr_beachkoopa_blue_walk)
    && (ready == 1)
    && (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-4,obj_shell,0,0))
        ready = 2;
        
    //Otherwise if the koopa is no longer overlapping a shell, make him kick one.
    else if (ready == 2) {
    
        //Check for a shell
        var shell = collision_rectangle(x+(5*sign(xscale)),bbox_top,x+(10*sign(xscale)),bbox_bottom-4,obj_shell,0,0);
        
        //If there's a shell in position
        if (shell)
        && (kick != 1)
        && (shell.held == 0)
        && (((hspeed > 0) && (xscale == 1))
        || ((hspeed < 0) && (xscale == -1))) {
        
            //Set sprite
            sprite_index = spr_beachkoopa_blue_walk;
        
            //Stop animation
            image_speed = 0;
            image_index = 0;
            
            //Stop moving
            hspeed = 0;
            
            //Initialize kick
            kick = 1;
            
            //End alarms
            alarm[10] = -1;
        }
        
        //Otherwise if the koopa is about to kick the shell
        else if ((shell) && (kick == 1)) {
            
            //If the timer hits 30
            if (kicktime > 30) {
            
                //Play 'Kick' sound
                audio_play_sound(snd_kick, 0, false);
                
                //Set kicking pose
                sprite_index = spr_beachkoopa_blue_kick;
            
                //Kick the shell
                kick = 0;
                kicktime = 0;
                
                //Create a kicked shell
                mykick = instance_create(shell.x,shell.y,obj_shell_kick);
                
                //Give it the same stats
                mykick.sprite_index = shell.sprite_index;
                                        
                //Give it the same inside koopa
                mykick.koopainside = shell.koopainside;
                
                //Set the horizontal speed
                mykick.prevhspeed = 2.7*(other.xscale);
                mykick.hspeed = 2.7*(other.xscale);
                
                //Start moving again
                alarm[10] = 30;
                
                //Destroy shell
                with (shell) instance_destroy();
            }
            
            //Otherwise, increment timer
            else
                kicktime++;
        }
        
        //Check for a moving shell
        var shell_m = collision_rectangle(x+(5*sign(xscale)),bbox_top,x+(10*sign(xscale)),bbox_bottom-4,obj_shell_kick,0,0);
        
        //If there's a moving shell coming
        if (shell_m) && ((shell_m.hspeed < 0) && (xscale == 1)) 
        || (shell_m) && ((shell_m.hspeed > 0) && (xscale == -1)) {
        
            //Create a shell
            myshell = instance_create(shell_m.x,shell_m.y,obj_shell);
            
            //Give it the same stats
            myshell.sprite_index = shell_m.sprite_index;
                                    
            //Give it the same inside koopa
            myshell.koopainside = shell_m.koopainside;
            if (myshell.koopainside > 0) {
            
                myshell.alarm[0] = 540;
                myshell.alarm[1] = 600;
            }
            
            //Force kick
            kick = 0;
            kicktime = 0;

            //Destroy shell
            with (shell_m) instance_destroy();    
        }
    }
    
    //Turn on ledges
    if (ready > 1)
        event_user(6);
}

//Set facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;



