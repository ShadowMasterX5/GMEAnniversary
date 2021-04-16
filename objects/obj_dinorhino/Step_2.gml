/// @description Animation + Platform movement

//Inherit event
event_inherited();

//If there's no gravity
if (gravity == 0)
    image_speed = 0.125;
else {

    image_speed = 0;
    image_index = 0;
}

