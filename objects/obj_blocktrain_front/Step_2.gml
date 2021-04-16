/// @description Block train platform logic

//If the player is on this moving platform, snap him vertically
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) 
&& (vspeed < 0)
    obj_playerparent.y = ceil(bbox_top-16);

