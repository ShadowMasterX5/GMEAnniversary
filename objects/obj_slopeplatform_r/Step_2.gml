//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-4,bbox_right,bbox_bottom-4,obj_playerparent,1,0))
&& (obj_playerparent.bbox_bottom < bbox_bottom+5)
&& (obj_playerparent.state < 2)) {

    //Make sure the player does not get embed with the slope
    obj_playerparent.y++;
    
    //Snap the player horizontally and prevent it from getting embed on a solid.
    obj_playerparent.x += x-xprevious;
    if (collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x--;
    else if (collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        with (obj_playerparent) x++;   
}

