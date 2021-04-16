/// @description Move when room starts

//Check if overlapping with a arrow modifier and make it move at the start of the room.
if (collision_point(x,y,obj_up,0,0)) {
        
    //Create train
    with (instance_create(x,y,obj_blocktrain_front)) {
    
        dir = 90;
        motion_set(90,other.spd);
        length = other.length;
    }
    
    //Destroy
    instance_destroy();
}
else if (collision_point(x,y,obj_down,0,0)) {
        
    //Create train
    with (instance_create(x,y,obj_blocktrain_front)) {
    
        dir = 270;
        motion_set(270,other.spd);
        length = other.length;
    }
    
    //Destroy
    instance_destroy();
}
else if (collision_point(x,y,obj_left,0,0)) {
        
    //Create train
    with (instance_create(x,y,obj_blocktrain_front)) {
    
        dir = 180;
        motion_set(180,other.spd);
        length = other.length;
    }
    
    //Destroy
    instance_destroy();
}
else if (collision_point(x,y,obj_right,0,0)) {
        
    //Create train
    with (instance_create(x,y,obj_blocktrain_front)) {
    
        dir = 0;
        motion_set(0,other.spd);
        length = other.length;
    }
    
    //Destroy
    instance_destroy();
}

