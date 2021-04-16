/// @description Hoopster logic

if ((vspeed < 0) && (!collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_climb,0,0))) {

    vspeed = 1;
    if (yscale != 1)
        yscale = 1;
}
else if ((vspeed > 0) && (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_climb,0,0))) {

    vspeed = -0.5;
    if (yscale != -1)
        yscale = -1;
}

