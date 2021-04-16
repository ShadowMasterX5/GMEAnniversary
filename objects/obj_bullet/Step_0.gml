/// @description Bullet bill logic

//Set frame depending of direction
image_index = direction/45;

//Change depth
if (depth == 10) {

    if (!place_meeting(x,y,obj_solid))
        depth = -2;
}

//Destroy if outside the view
if (outside_view())
    instance_destroy();

