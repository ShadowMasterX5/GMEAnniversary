/// @description Banzai bill logic

//Change depth
if (depth == 11) {

    if (!place_meeting(x,y,obj_solid))
        depth = -2;
}

//Destroy if outside the view
if (outside_view())
    instance_destroy();

