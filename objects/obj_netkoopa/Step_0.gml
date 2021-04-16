/// @description Net koopa logic

//If the koopa can turn and there's not a climbable surface in position
if (ready2 == false) {

    //If the koopa is moving down
    if (vspeed > 0)
    && (!collision_line(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_climb_net,0,0)) {
    
        vspeed = -vspeed;
        if (ready != 2)
            ready = 2;
    }
    
    //Otherwise, turn around
    else if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_climb_net,0,0)) {

        //Stop movement
        speed = 0;
    
        //Turn
        ready2 = true;
    
        //Change direction
        alarm[0] = 10;
    }
}

//Wall collision
event_user(3);

//If moving up and there's a ceiling in place
if (vspeed < 0) {

    if (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_solid,0,0))
    || (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_ceilslopeparent,1,0)) {
    
        //Prevent getting embed on ceiling
        while (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_solid,0,0))
            y++;
            
        //Reverse vertical movement
        vspeed = -vspeed;
    }
}

//Otherwise, if moving down and there's a semisolid in place
else if (vspeed > 0)  
&& (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_semisolid,0,0))
    vspeed = -vspeed;

