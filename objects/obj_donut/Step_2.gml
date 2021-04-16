/// @description Donut logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //If the donut is not falling down
    if (vspeed == 0) 
        image_speed = 0.5;
    
    //Otherwise, if it's falling
    else {
    
        //Do not animate
        image_speed = 0;
        image_index = 1;
    }
    
    //Snap the player vertically
    if (!collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1))
    && (!collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
        obj_playerparent.y = ceil(bbox_top-15);
}
else {

    //If the donut is not falling down
    if (vspeed == 0) {
    
        //Do not animate
        image_speed = 0;
        image_index = 0;
        
        //Do not fall
        alarm[0] = 30;
    }
    
    //Otherwise, if the donut is falling down
    else {
    
        //Do not animate
        image_speed = 0;
        image_index = 1;
    }
}

//Cap vertical speed
if (vspeed > 2.5)
    vspeed = 2.5;

