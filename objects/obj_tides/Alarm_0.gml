/// @description Move

if (vspeed == 0) {

    //Collision with a 'Up' arrow modifier.
    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_up,0,1))   
        vspeed = -myspd;
    
    //Collision with a 'Down' arrow modifier.
    else if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_down,0,1))
        vspeed = myspd;
}

