/// @description Default wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-1,bbox_top,bbox_left,bbox_bottom-8,obj_solid,1,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top,bbox_right+1,bbox_bottom-8,obj_solid,1,0))) {

    //Reverse horizontal speed
    hspeed = -hspeed;
    
    //Prevent getting embed on walls
    while (collision_rectangle(bbox_left,bbox_top,bbox_left,bbox_bottom-8,obj_solid,1,0))
        x++;
    while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-8,obj_solid,1,0))
        x--;
}

