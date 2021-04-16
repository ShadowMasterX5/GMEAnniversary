/// @description Break in contact with the player when running at full speed and with the football suit

//Check for the player object
if (instance_exists(obj_playerparent)) {

    //If the player is on contact with the block and the player is running at fullspeed
    if (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_bottom+1,obj_dashkill,0,0))
    && (obj_playerparent.pmeter >= 112)
    && (global.powerup == cs_football)
        event_user(0);
}

