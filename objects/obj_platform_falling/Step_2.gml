/// @description Falling platform logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //If the platform is not falling
    if (ready == 0) {
        
        //Set the vertical speed
        vspeed = 0.25;
        
        //Fall
        ready = 1;
        
        //Apply gravity
        alarm[0] = 15;
    }
    
    //Otherwise, if the platform is falling
    else {

        //Check for a moving platform
        var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1);
        if (check)
        || (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
            exit;
    
        //Snap the player vertically
        obj_playerparent.y = ceil(bbox_top-15);
    }
}

//Cap vertical speed
if (vspeed > 2.5)
    vspeed = 2.5;

