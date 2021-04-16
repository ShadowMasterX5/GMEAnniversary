/// @description Skull raft riding logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //Check for other skull rafts
    var check = collision_rectangle(obj_playerparent.bbox_left,bbox_top-5,obj_playerparent.bbox_right,bbox_top+1,obj_skullraft,0,1);

    //If no skull rafts are around, or the other one is lower
    if (!check)
    || (((check.y > y) || (check.y = y)) && (check > id)) {

        //Snap the player vertically
        obj_playerparent.y = ceil(bbox_top-16);
    
        //Snap the player horizontally and prevent it from getting embed on a solid.
        obj_playerparent.x += x-xprevious;
        if (collision_rectangle(obj_playerparent.bbox_right,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+1,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            with (obj_playerparent) x--;
        else if (collision_rectangle(obj_playerparent.bbox_left-1,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            with (obj_playerparent) x++;   
    }
}

