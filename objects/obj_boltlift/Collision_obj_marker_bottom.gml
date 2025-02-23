//This collision happens if the player walks onto the platform as opposed to jumping on it.

if (place_meeting(x,y,obj_playerparent))
exit;

if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_marker_bottom,1,0)) {

    //If the mask is in contact with a wall.
    if (mytop.touchleft) {
    
        //Headshot it.    
        headshot = 5
        
        //Animate it.
        image_speed = 0.5;
        
        //Set the horizontal speed.
        hspeed = 0.25;
        
        //Stop it.
        alarm[0] = 30; 
    }
    
    //If the platform is not spinning.
    if ((!isspin) && (!stuck)) {
    
        alarm[0] = -1;
        isspin = true;
    }
    
    //Animate it.
    image_speed = 0.5;
    
    //Set the horizontal speed.
    hspeed = 0.25;
    
    //Stop it.
    alarm[0] = 30;
}

