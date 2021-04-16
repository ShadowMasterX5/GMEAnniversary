/// @description Go up a bit

//If this object is outside the view, deny event.
if (outside_view() == true) {

    alarm[0] = 1;
    exit;
}

//Set the vertical speed
vspeed = -1;

//Stop it
alarm[1] = 32;

