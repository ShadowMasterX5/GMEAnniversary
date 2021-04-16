/// @description Animate newly added vines.

//Create a warp object
if (y < 0) {

    //Create warp object
    with (instance_create(x,-48,obj_warproom)) 
        myroom = other.myroom; 
}

with (obj_vine) image_speed = 0.15;

