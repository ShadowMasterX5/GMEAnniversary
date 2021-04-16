/// @description Reset platform

//Make sure the player is not above it.
if (collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top-2,obj_playerparent,1,1)) {

    alarm[0] = 1;
    exit;
}

//Reset the platform
ready = 0;

