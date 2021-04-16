/// @description Stone block logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //If the platform is not falling
    if (ready == 0) {
    
        //Remember time given
        prevtime = time;
        
        //Fall
        ready = 1;
        
        //Decrement timer
        alarm[0] = 60;
        
        //Set movement
        if (place_meeting(x,y,obj_up))
            motion_set(90,1);
        else if (place_meeting(x,y,obj_down))
            motion_set(270,1);
        else if (place_meeting(x,y,obj_left))
            motion_set(180,1);
        else
            motion_set(0,1);
    }

    //Check for a moving platform
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1);
    if (check)
    || (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
        exit;

    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-15);

    //Move the player horizontally if there is no solid in his way
    if (x < x-xprevious) && (!collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left-1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
    || (x > x-xprevious) && (!collision_rectangle(obj_playerparent.bbox_right+1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        obj_playerparent.x += x-xprevious;
}

//Cap vertical speed
if (vspeed > 2.5)
    vspeed = 2.5;

