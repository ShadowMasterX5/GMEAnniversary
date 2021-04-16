/// @description Weight platform logic

//Make sure the parent exists
if (instance_exists(parent)) {

    //If the player is on this moving platform
    if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
    && (obj_playerparent.bbox_bottom < yprevious+5)
    && (obj_playerparent.state < 2)) {
    
        //Check for a moving platform
        var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1);
        if (check)
        || (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
            exit;
            
        //Make this platform go down
        vspeed = 0.5;
    
        //Make the parent platform go up
        with (parent) vspeed = -0.5;
    
        //Snap the player vertically
        obj_playerparent.y = ceil(bbox_top-15);
    }
    
    //Otherwise, if the player is not on this platform or in the parent platform
    else if (!collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0)) 
    && (!collision_rectangle(parent.bbox_left,parent.bbox_top-5,parent.bbox_right,parent.bbox_top+4,obj_playerparent,0,0)) {
    
        //If the platform is above the y start position
        if (y < ystart) {
        
            //Set the vertical speed
            vspeed = 0.25;
            
            //Set the parent vertical speed
            with (parent) vspeed = -0.25;
        }
        
        //Otherwise, if the platform is below the y start position
        else if (y > ystart) {
        
            //Set the vertical speed
            vspeed = -0.25;
            
            //Set the parent vertical speed
            with (parent) vspeed = 0.25;    
        }
    }
}

