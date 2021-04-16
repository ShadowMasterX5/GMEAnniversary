/// @description The player is pulling out a item

//Do not animate
image_speed = 0;
image_index = 0;

//Stop picking
alarm[0] = 180;

//Frame
frame = 0;
alarm[1] = 1;

//Stop movement
with (obj_playerparent) {

    xspeed = 0;
    yspeed = 0;
    disablecontrol = true;
}

//Destroy spinner
if (instance_exists(obj_spinner))
    with (obj_spinner) instance_destroy();

