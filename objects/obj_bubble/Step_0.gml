/// @description Destroy in contact with a solid or water surface.

if ((collision_point(x,bbox_top-1,obj_solid,0,0))
|| (collision_point(x,bbox_top-1,obj_ceilslopeparent,1,0)))
|| (!collision_point(x,bbox_top-1,obj_swim,0,0))
    instance_destroy();

