/// @description This collision happens if the player hits the platform from below.

if ((collision_rectangle(bbox_left,bbox_bottom-1,bbox_right,bbox_bottom+1,obj_marker_head,0,0)) && (obj_playerparent.yspeed < 0)) {

    //If the mask is in contact with a solid.
    if (mytop.touchright) {
    
        headshot = 5;
    }
    
    //Make Mario not jump
    obj_playerparent.yspeed = 1;
    obj_playerparent.jumping = 2;
    
    //Animate
    image_speed = -0.5;
    
    //Unstuck it.
    if (stuck) {
    
        stuck = false;
    }
    
    //Set horizontal speed
    hspeed = -0.25;
    
    //Stop it
    alarm[0] = 30;
}

