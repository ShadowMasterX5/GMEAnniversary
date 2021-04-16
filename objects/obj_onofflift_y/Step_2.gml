/// @description Yellow lift logic (Player)
/// @param Player

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {
    
    //Check for a moving platform or quicksand
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom,obj_semisolid,0,1);
    if (check)
    || (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
        exit;

    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-15);

    //Move the player horizontally if there is no solid in his way 
    obj_playerparent.x += x-xprevious;
    if (collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x--;
    else if (collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x++;  
}

