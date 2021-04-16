/// @description Start moving

//Check if overlapping with a arrow modifier and make it move in the direction where the modifier is pointing
if (collision_point(x,y,obj_up,0,0)) {
        
    //Set the direction
    direction = 90;
    
    //Set the speed
    speed = 1;
}
else if (collision_point(x,y,obj_down,0,0)) {
        
    //Set the direction
    direction = 270;
    
    //Set the speed
    speed = 1;
}
else if (collision_point(x,y,obj_left,0,0)) {
        
    //Set the direction
    direction = 180;
    
    //Set the speed
    speed = 1;
}
else if (collision_point(x,y,obj_right,0,0)) {
        
    //Set the direction
    direction = 0;
    
    //Set the speed
    speed = 1;
}

