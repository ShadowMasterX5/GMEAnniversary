/// @description Open adyacent paths

//Check direction
switch (panel.exitdir) {

    //Up
    case (0): {
    
        //Check for a path above
        var mypath = collision_rectangle(panel.x+8,panel.y-4,panel.x+8,panel.y-4,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(90,2);
    } break;
    
    //Down
    case (1): {
    
        //Check for a path below
        var mypath = collision_rectangle(panel.x+8,panel.y+20,panel.x+8,panel.y+20,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(270,2);
    } break;
    
    //Left
    case (2): {
    
        //Check for a path to the left
        var mypath = collision_rectangle(panel.x-4,panel.y+8,panel.x-4,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(180,2);
    } break;
    
    //Right
    case (3): {
    
        //Check for a path to the right
        var mypath = collision_rectangle(panel.x+20,panel.y+8,panel.x+20,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(0,2);
    } break;
    
    //Up-Left
    case (4): {
    
        //Check for a path above
        var mypath = collision_rectangle(panel.x+8,panel.y-4,panel.x+8,panel.y-4,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(90,2);
            
        //Check for a path to the left
        var mypath = collision_rectangle(panel.x-4,panel.y+8,panel.x-4,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(180,2);
    } break;            
    
    //Up-Right
    case (5): {
    
        //Check for a path above
        var mypath = collision_rectangle(panel.x+8,panel.y-4,panel.x+8,panel.y-4,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(90,2);
            
        //Check for a path to the right
        var mypath = collision_rectangle(panel.x+20,panel.y+8,panel.x+20,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(0,2);
    } break;            
    
    //Down-Left
    case (6): {
    
        //Check for a path below
        var mypath = collision_rectangle(panel.x+8,panel.y+20,panel.x+8,panel.y+20,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(270,2);
            
        //Check for a path to the left
        var mypath = collision_rectangle(panel.x-4,panel.y+8,panel.x-4,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(180,2);
    } break;
    
    //Down-Right
    case (7): {
    
        //Check for a path below
        var mypath = collision_rectangle(panel.x+8,panel.y+20,panel.x+8,panel.y+20,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(270,2);
            
        //Check for a path to the right
        var mypath = collision_rectangle(panel.x+20,panel.y+8,panel.x+20,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(0,2);
    } break;
    
    //Up-Down
    case (8): {
    
        //Check for a path above
        var mypath = collision_rectangle(panel.x+8,panel.y-4,panel.x+8,panel.y-4,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(90,2);
            
        //Check for a path below
        var mypath = collision_rectangle(panel.x+8,panel.y+20,panel.x+8,panel.y+20,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(270,2);  
    } break;
    
    //Left-Right
    case (9): {
    
        //Check for a path to the left
        var mypath = collision_rectangle(panel.x-4,panel.y+8,panel.x-4,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(180,2);
            
        //Check for a path to the right
        var mypath = collision_rectangle(panel.x+20,panel.y+8,panel.x+20,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(0,2);            
    } break;
    
    //Default (All Directions)
    case (10): {
    
        //Check for a path above
        var mypath = collision_rectangle(panel.x+8,panel.y-4,panel.x+8,panel.y-4,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(90,2);
    
        //Check for a path below
        var mypath = collision_rectangle(panel.x+8,panel.y+20,panel.x+8,panel.y+20,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(270,2);
    
        //Check for a path to the left
        var mypath = collision_rectangle(panel.x-4,panel.y+8,panel.x-4,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(180,2);
    
        //Check for a path to the right
        var mypath = collision_rectangle(panel.x+20,panel.y+8,panel.x+20,panel.y+8,obj_mappathparent,0,0);
        if (mypath)
        && (mypath.visible == false)
            with (instance_create(panel.x,panel.y,obj_opener)) motion_set(0,2);
    } break;
}

