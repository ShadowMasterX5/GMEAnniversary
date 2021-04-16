/// @description Custom floor / ceiling collision

//Inherit event
event_inherited();

//If moving down and there's a slope below
if (vspeed > 0.5)
    while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-4,obj_slopeparent,1,0))
        y--;

