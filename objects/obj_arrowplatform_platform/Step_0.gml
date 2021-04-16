/// @description Reset the platform

if (ready)
&& (!collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_bottom+4,obj_playerparent,0,0))
    ready = false;

