/// @description Push the player

//Make sure if the player is below the block
if (other.y > y-11) {

    if ((hspeed < 0) && (collision_rectangle(bbox_left-2-hspeed,bbox_top+4,bbox_left-2,bbox_bottom-1,obj_playerparent,0,0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right+2,bbox_top+4,bbox_right+2+hspeed,bbox_bottom-1,obj_playerparent,0,0)))
        obj_playerparent.x += hspeed;
}

