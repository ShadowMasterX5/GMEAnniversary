/// @description Moving pipe logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //Check for a moving platform
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1);
    if (check)
    && (check != mysolid)
    || (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
        exit;

    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-15);

    //Move the player horizontally if there is no solid in his way
    if (x < x-xprevious) && (!collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
    || (x > x-xprevious) && (!collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        obj_playerparent.x += x-xprevious;
}

//Stop if moving
if (vspeed != 0) 
&& (collision_rectangle(bbox_left,y,bbox_right,y+15,obj_endmarker,0,0)) {

    //Snap to grid
    move_snap(16,16)
    
    //Stop movement
    vspeed = 0;
    
    //Move again
    alarm[0] = 120;
}

//Set the position of the solid and make sure it strecthes
image_yscale = room_height-y;

