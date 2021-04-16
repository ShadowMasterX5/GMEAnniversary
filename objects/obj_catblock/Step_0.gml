/// @description Destroy if the player is doing a dropdown attack

var drop = collision_rectangle(bbox_left-2,bbox_top-2,bbox_right+2,bbox_bottom+2,obj_dropdown,0,0);
if (drop)
&& (drop.ready)
    event_user(0);

