/// @description Map player logic

//If the inventory is opened or the player can't move and the paths are opening or the save menu is showing.
if (ready)
|| (letsgo)
|| (obj_mapcontrol.inventory == 1)
|| (instance_number(obj_opener) > 0)
|| (instance_number(obj_savemenu) > 0)
    exit;
    
//Map path opener (It will work only on debug mode)
if (debug_mode)
&& (keyboard_check_pressed(global.controlkey)) {

    //If the player speed is 0 and there' no opener object active
    if (speed == 0)
    && (instance_number(obj_opener) == 0) {
    
        //Check for a path above
        var mypath_u = collision_rectangle(x+8,y-4,x+8,y-4,obj_mappathparent,0,0);
        if (mypath_u)
        && (mypath_u.visible == false)
            with (instance_create(x,y,obj_opener)) motion_set(90,2);
                
        //Check for a path below
        var mypath_d = collision_rectangle(x+8,y+20,x+8,y+20,obj_mappathparent,0,0);
        if (mypath_d)
        && (mypath_d.visible == false)
            with (instance_create(x,y,obj_opener)) motion_set(270,2);
            
        //Check for a path to the left
        var mypath_l = collision_rectangle(x-8,y+8,x-8,y+8,obj_mappathparent,0,0);
        if (mypath_l)
        && (mypath_l.visible == false)
            with (instance_create(x,y,obj_opener)) motion_set(180,2);
                
        //Check for a path to the right
        var mypath_r = collision_rectangle(x+24,y+8,x+24,y+8,obj_mappathparent,0,0);
        if (mypath_r)
        && (mypath_r.visible == false)
            with (instance_create(x,y,obj_opener)) motion_set(0,2);
    }
}
    
//If the 'Up' key is pressed
else if (keyboard_check_pressed(global.upkey)) {

    //Check for a path
    var mypath = collision_rectangle(x+8,y-4,x+8,y-4,obj_mappathparent,0,0);
    
    //If there's a path above visible
    if (mypath) {
    
        //If the path is not visible, play 'Bump' sound
        if (mypath.visible == 0)
            audio_play_sound(snd_bump, 0, false);
            
        //Otherwise, move up
        else if (speed == 0)
            vspeed = -1;
    }
    
    //Otherwise
    else if (speed == 0)
        audio_play_sound(snd_bump, 0, false);
}

//Otherwise, if the 'Down' key is pressed
else if (keyboard_check_pressed(global.downkey)) {

    //Check for a path
    var mypath = collision_rectangle(x+8,y+20,x+8,y+20,obj_mappathparent,0,0);
    
    //If there's a path above visible
    if (mypath) {
    
        //If the path is not visible, play 'Bump' sound
        if (mypath.visible == 0)
            audio_play_sound(snd_bump, 0, false);
            
        //Otherwise, move up
        else if (speed == 0)
            vspeed = 1;
    }
    
    //Otherwise
    else if (speed == 0)
        audio_play_sound(snd_bump, 0, false);
}

//Otherwise, if the 'Left' key is pressed
else if (keyboard_check_pressed(global.leftkey)) {

    //Check for a path
    var mypath = collision_rectangle(x-8,y+8,x-8,y+8,obj_mappathparent,0,0);
    
    //If there's a path above visible
    if (mypath) {
    
        //If the path is not visible, play 'Bump' sound
        if (mypath.visible == 0)
            audio_play_sound(snd_bump, 0, false);
            
        //Otherwise, move up
        else if (speed == 0)
            hspeed = -1;
    }
    
    //Otherwise
    else if (speed == 0)
        audio_play_sound(snd_bump, 0, false);    
}

//Otherwise, if the 'Right' key is pressed
else if (keyboard_check_pressed(global.rightkey)) {

    //Check for a path
    var mypath = collision_rectangle(x+24,y+8,x+24,y+8,obj_mappathparent,0,0);
    
    //If there's a path above visible
    if (mypath) {
    
        //If the path is not visible, play 'Bump' sound
        if (mypath.visible == 0)
            audio_play_sound(snd_bump, 0, false);
            
        //Otherwise, move up
        else if (speed == 0)
            hspeed = 1;
    }
    
    //Otherwise
    else if (speed == 0)
        audio_play_sound(snd_bump, 0, false);    
}

///Level panel logic

//Change the level being checked
panel = collision_point(x,y+8,obj_maplevel,0,0);

//If the player is on a panel
if (panel) {
    
    //If 'Shift' is pressed and the panel can be accessed
    if (keyboard_check_pressed(global.shiftkey)) 
    && (speed == 0)
    && (letsgo == 0) 
    && (panel.beaten != 2) {
        
        //Check if the panel is blocked
        if (panel.block == 0) {
        
            //Go where the panel takes you
            with (panel) {
            
                //Check the star coins collected in the level
                event_user(0);
                
                //Check the rooms of the level
                event_user(1);
                
                //Check if the player can exit the room via pausing the game
                global.levelbeat = beaten;
            }
            
            //Go to the level
            alarm[1] = 2;
            
            //Set the victory pose
            letsgo = true;
        }
        
        else {
            
            //Play a sound
            audio_play_sound(snd_wrong,0,0)
        }
    }
}

