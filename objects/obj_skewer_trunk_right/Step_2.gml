/// @description Skewer logic

//Check for a wall at the right
var wall = collision_rectangle(bbox_right,bbox_top,bbox_right+hspeed,bbox_bottom,obj_solid,0,0);

//If the skewer is not on the wall.
if (ready == 0) {

    //When moving right
    if (hspeed >= 0) {
        
        //Handle wall collisions
        if (wall)
        && (wall.x > xstart)
        && (bbox_right < wall.xprevious+5)
            x = wall.bbox_left-16;
    }
    
    //Check for wall objects
    if ((collision_rectangle(bbox_right+1,bbox_top,bbox_right+1,bbox_bottom,wall,0,0)) && (wall.x > xstart)) {
    
        //Play 'Thwomp' sound
        if (outside_view() == false) then audio_play_sound(snd_thwomp, 0, false);
    
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop horizontal movement if moving right and go back after a bit.
        if (hspeed > 0) {
        
            //Stop vertical movement
            hspeed = 0;
            
            //Go left
            alarm[3] = 60;
        }
    }
            
    //Otherwise, check if it's long enough to stop it.
    else if (x > parent.x+240) {
    
        //Snap into position
        x = parent.x+240;
        
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop horizontal movement if moving down and go up after a bit.
        if (hspeed > 0) {
        
            //Stop horizontal movement
            hspeed = 0;
            
            //Go left
            alarm[3] = 60;
        }
    }
}

//Otherwise, if the skewer touched the wall and it's moving backwards.
else if (ready) {

    //If the skewer is at the left of the start position.
    if (x < xstart) {
    
        //Stop horizontal movement
        hspeed = 0;
        x = xstart;
        
        //Not ready
        ready = 0;
        
        //Go left a bit
        alarm[0] = 120;
    }
}

//Hurt Mario if it's overlapping the skewer.
mario = collision_rectangle(parent.x+16,bbox_top,bbox_right,bbox_bottom,obj_mario,0,1);
if (mario)
    with (mario) event_user(0);

