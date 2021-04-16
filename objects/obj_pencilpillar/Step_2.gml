/// @description Platform logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //Check for a moving platform
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1);
    if (check)
        exit;

    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-16);
}

//Collision with the player
if (collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top,obj_playerparent,0,0))
|| (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+2,obj_playerparent,0,0))
    with (obj_playerparent) event_user(0);

