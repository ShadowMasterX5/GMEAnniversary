/// @description Hammer logic

//Rotate based on speed
image_angle -= 10*(sign(hspeed))*abs(hspeed);

//Set scale
image_xscale = 1*sign(hspeed);

//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-32)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+32)
    instance_destroy();

