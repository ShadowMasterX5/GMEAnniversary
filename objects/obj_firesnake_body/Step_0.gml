/// @description Fire snake logic

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

//Stop horizontal speed if in ground and make it jump again
if (gravity == 0) {

    //If the object jumped
    if (jumping == 2) {
    
        //Stop horizontal movement
        hspeed = 0;
    
        //End jump
        jumping = 0;
    }
}

//Otherwise, end jump
else {

    if (jumping == 1) && (vspeed > 0)
        jumping = 2;
}

//Allow jumpthrough
if ((ready == 1) && (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_semisolid,0,0))) ready = 2;
if ((ready == 2) && (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_semisolid,0,0))) ready = 0;

