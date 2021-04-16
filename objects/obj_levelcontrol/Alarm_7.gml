/// @description Disable barrier and create water if required

//Disable barrier
barrier = 0;

//Create swim object
if (water) {

    with (instance_create(0, -96, obj_swim)) {
    
        image_xscale = room_width;
        image_yscale = room_height;
    }
}

