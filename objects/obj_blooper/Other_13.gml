/// @description Default wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-1.5,bbox_top+4,bbox_left,bbox_bottom-8,obj_solid,1,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top+4,bbox_right+1.5,bbox_bottom-8,obj_solid,1,0))) {

    //Reverse horizontal speed
    hspeed = 0;
    
    //Prevent getting embed on walls
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_left,bbox_bottom-8,obj_solid,1,0))
        x += 1.5;
    while (collision_rectangle(bbox_left,bbox_top+4,bbox_right,bbox_bottom-8,obj_solid,1,0))
        x -= 1.5;
}

