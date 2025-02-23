/// @description Arrow platform generator logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //If the generator did not spawned a platform yet
    if (!ready) {
    
        //First, destroy the old generated platform
        if (instance_exists(obj_arrowplatform_platform)) {
        
            with (obj_arrowplatform_platform)
                instance_destroy();
        }
        
        //Spawn it
        ready = 1;
        
        //Reset
        alarm[0] = 16;
    
        //Generate it
        with (instance_create(x,y,obj_arrowplatform_platform)) {
        
            ready = 1;
            type = other.type;
        }
    }
}

//Make sure the platform gets the correct frame
image_single = type;

