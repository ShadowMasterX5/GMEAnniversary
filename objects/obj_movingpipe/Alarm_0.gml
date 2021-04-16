/// @description Start moving

//If there's a 'Up' modifier in place, move up.
if (collision_rectangle(bbox_left,bbox_top,bbox_right,y+15,obj_up,0,0))
    vspeed = -1;
    
//Otherwise, there's a 'Down' modifier in place, move down.
else if (collision_rectangle(bbox_left,bbox_top,bbox_right,y+15,obj_down,0,0))
    vspeed = 1;

