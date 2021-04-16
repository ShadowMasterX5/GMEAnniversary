/// @description Break in contact with the player while invulnerablke

//Check for the player object
if (instance_exists(obj_playerparent)) {

    //If the player is on contact with the block and the p-switch is active
    if (collision_rectangle(bbox_left-1,bbox_top-1-obj_playerparent.yspeed,bbox_right+1,bbox_bottom+1+obj_playerparent.yspeed,obj_playerparent,0,0))
    && (instance_exists(obj_invincibility))
        event_user(0);
}

