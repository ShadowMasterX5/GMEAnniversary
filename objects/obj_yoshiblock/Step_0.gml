/// @description Break in contact with the player

//Check for the player object
if (instance_exists(obj_playerparent)) {

    if (place_meeting(x,y-(obj_playerparent.yspeed*2.5),obj_playerparent))
    && (global.mount == 1)
    && (obj_playerparent.yspeed > 0) {
        
        //Make player bounce
        with (obj_playerparent) event_user(1);
            
        //Break it
        event_user(0);
    }
}

