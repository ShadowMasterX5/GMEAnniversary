/// @description Custom wall script

//If the ice block has been kicked
if (ready) {
    
    //If moving and there's a wall on the way
    if ((hspeed < 0) && (collision_rectangle(bbox_left-1+hspeed,bbox_top,bbox_left,bbox_bottom-8,obj_solid,1,0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top,bbox_right+1+hspeed,bbox_bottom-8,obj_solid,1,0)))
        event_user(0);
}
else
    event_inherited();

