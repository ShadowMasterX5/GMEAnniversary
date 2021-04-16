/// @description Up Skewer logic

//Check for a ceiling above
var ceiling = collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-1,obj_solid,0,0);
        
//If the skewer is not on the ceiling.
if (ready == 0) {

    //When moving up
    if (vspeed < 0) {
    
        //Handle ceiling collisions
        if (ceiling)
        && (ceiling.y < ystart)
        && (bbox_top > ceiling.yprevious-5)
            y = ceiling.bbox_bottom+1;
    }
    
    //Check for ceiling
    if ((collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-1,ceiling,0,0)) && (ceiling.y < ystart)) {
    
        //Play 'Thwomp' sound
        if (outside_view() == false) then audio_play_sound(snd_thwomp, 0, false);
    
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop vertical movement if moving up and go down after a bit.
        if (vspeed < 0) {
        
            //Stop vertical movement
            vspeed = 0;
            
            //Go down
            alarm[3] = 60;
        }
    }
    
    //Otherwise, check if it's long enough to stop it.
    else if (y < parent.y-240) {
    
        //Snap into position
        y = parent.y-240;
        
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop vertical movement if moving down and go up after a bit.
        if (vspeed < 0) {
        
            //Stop vertical movement
            vspeed = 0;
            
            //Go down
            alarm[3] = 60;
        }
    }
}

//Otherwise, if the skewer touched the ceiling and it's descending.
else if (ready) {

    //If the skewer is below the start position.
    if (y > ystart) {
    
        //Stop vertical movement
        vspeed = 0;
        y = ystart;
        
        //Not ready
        ready = 0;
        
        //Go down a bit
        alarm[0] = 120;
    }
}

//Hurt Mario if it's overlapping the skewer.
mario = collision_rectangle(bbox_left,bbox_top,bbox_right,parent.y-1,obj_mario,0,1);
if (mario)
    with (mario) event_user(0);

