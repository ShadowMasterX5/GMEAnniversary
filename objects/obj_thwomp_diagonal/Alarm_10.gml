/// @description Start moving based on modifiers

//Go up
if (place_meeting(x,y,obj_up)) {

    //Move up
    vspeed = -1;
    
    //Move left
    if (place_meeting(x,y,obj_left))
        hspeed = -1;
    
    //Otherwise, move right
    else if (place_meeting(x,y,obj_right))
        hspeed = 1;
}

//Go down
else if (place_meeting(x,y,obj_down)) {

    //Move down
    vspeed = 1;
        
    //Move left
    if (place_meeting(x,y,obj_left))
        hspeed = -1;
    
    //Otherwise, move right
    else if (place_meeting(x,y,obj_right))
        hspeed = 1;
}

