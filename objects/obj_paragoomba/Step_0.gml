/// @description Paragoomba logic

//If the goomba is ascending.
if (flying = 1) {

    //Set the vertical speed.
    vspeed = -2;
    gravity = 0;
    
    //Stop when nearby the top boundary.
    if (y < __view_get( e__VW.YView, 0 )+48) {
    
        //Follow the player
        flying = 2;
        
        //Set the vertical speed
        vspeed = 0.25;
        
        //Do stuff
        alarm[1] = 24;
        alarm[2] = 48;
        
        //End flight
        alarm[3] = 240;
    }
}

//Otherwise, if the goomba ascended enough.
else if (flying == 2) {

    //If the player does exist, follow him.
    if (instance_exists(obj_playerparent)) {
    
        if (obj_playerparent.x < x) {
        
            hspeed -= 0.05;
            if (hspeed < -2)
                hspeed = -2;
        }
        else if (obj_playerparent.x > x) {
        
            hspeed += 0.05;
            if (hspeed > 2)
                hspeed = 2;
        }
    }
    
    //Otherwise, follow the level manager.
    else {
    
        if (obj_levelcontrol.x < x) {
        
            hspeed -= 0.05;
            if (hspeed < -2)
                hspeed = -2;
        }
        else if (obj_levelcontrol.x > x) {
        
            hspeed += 0.05;
            if (hspeed > 2)
                hspeed = 2;
        }            
    }    
}

//Otherwise, use the default event.
else {

    //Inherit step event
    event_inherited();
    
    //Fly again after a while
    if ((gravity == 0) && (flying == 3)) {
    
        flying = 0;
        alarm[0] = 100;
    }
}

