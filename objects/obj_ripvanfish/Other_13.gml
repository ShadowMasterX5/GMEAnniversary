/// @description Default wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-4,obj_solid,1,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-4,obj_solid,1,0))) {

    //Stop horizontal movement
    hspeed = 0;
    
    //Prevent getting embed on walls
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,0,0))
        x++;
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_bottom-1,obj_solid,0,0))
        x--;
}

