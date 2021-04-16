/// @description A pipe that can blow the player away.

//Direction of the bubbles.
direct = 0;

//Set up the position of the bubbles.
a = 0;
b = 0;

//Set up the direction.
ready1 = 0;
ready2 = 0;

//Start blowing bubbles.
alarm[0] = 5;
alarm[1] = 5;

//Check up if there's a arrow modifier on the object and change up the direction of the blown bubbles if so.
if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_up,0,0)) //Up
{
    direct = 0;
    with (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_up,0,0))
        instance_destroy();
}
else if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_down,0,0)) //Down
{
    direct = 1;
    with (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_down,0,0))
        instance_destroy();
}
else if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_left,0,0)) //Left
{
    direct = 2;
    with (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_left,0,0))
        instance_destroy();
}
else if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_right,0,0)) //Right
{
    direct = 3;
    with (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_right,0,0))
        instance_destroy();
}

