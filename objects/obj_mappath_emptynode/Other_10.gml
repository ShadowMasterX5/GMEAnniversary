/// @description Open adyacent paths

//Check for a path above
var mypath_u = collision_rectangle(x+8,y-4,x+8,y-4,obj_mappathparent,0,0);
if (mypath_u)
&& (mypath_u.visible == false)
    with (instance_create(x,y,obj_opener)) motion_set(90,2);
        
//Check for a path below
var mypath_d = collision_rectangle(x+8,y+20,x+8,y+20,obj_mappathparent,0,0);
if (mypath_d)
&& (mypath_d.visible == false)
    with (instance_create(x,y,obj_opener)) motion_set(270,2);
    
//Check for a path to the left
var mypath_l = collision_rectangle(x-4,y+8,x-4,y+8,obj_mappathparent,0,0);
if (mypath_l)
&& (mypath_l.visible == false)
    with (instance_create(x,y,obj_opener)) motion_set(180,2);
        
//Check for a path to the right
var mypath_r = collision_rectangle(x+20,y+8,x+20,y+8,obj_mappathparent,0,0);
if (mypath_r)
&& (mypath_r.visible == false)
    with (instance_create(x,y,obj_opener)) motion_set(0,2);

