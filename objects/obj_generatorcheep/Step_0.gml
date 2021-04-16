/// @description Generator Cheep logic

//Cap vertical speed
if (vspeed > 4) {

    vspeed = 4;
    if (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.WView, 0 )+32)
        instance_destroy();       
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

