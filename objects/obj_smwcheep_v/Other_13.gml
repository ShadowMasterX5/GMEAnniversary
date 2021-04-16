/// @description Default floor / ceiling collisions.

if ((vspeed < 0) && (collision_rectangle(bbox_left,bbox_top-vspeed,bbox_right,bbox_top,obj_solid,0,0)))
|| ((vspeed > 0) && (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+vspeed,obj_semisolid,0,0))) {

    //Reverse horizontal speed
    vspeed = vspeed*-1;
    
    //Prevent getting embed on a slope.
    while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,0,0))
        y++;
    while (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_semisolid,0,0))
        y--;        
}

