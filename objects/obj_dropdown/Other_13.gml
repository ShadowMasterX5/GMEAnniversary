/// @description Default wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-hspeed,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+hspeed,bbox_bottom-1,obj_solid,1,0)))
    instance_destroy();

