/// @description Jump on walls

//If there's a wall in the way
if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed*2,bbox_top+4,bbox_left+hspeed*2,bbox_bottom-1,obj_solid,0,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed*2,bbox_top+4,bbox_right+hspeed*2,bbox_bottom-1,obj_solid,0,0))) {

    //If there's no gravity, hop
    if (delay == 0)
    && (gravity == 0) {
    
        vspeed = -4.5;
        delay = 6;
        y--;
    }
}

//Move away from walls
if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed,bbox_top+4,bbox_left+hspeed,bbox_bottom-1,obj_solid,0,0)))
    x++;
if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed,bbox_top+4,bbox_right+hspeed,bbox_bottom-1,obj_solid,0,0)))
    x--;    

