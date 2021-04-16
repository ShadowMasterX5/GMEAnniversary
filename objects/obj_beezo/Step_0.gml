/// @description Beezo logic

//Set the facing direction
xscale = 1*sign(hspeed);

//Destroy if outside the view
if ((hspeed < 0) && (x < __view_get( e__VW.XView, 0 )-16))
|| ((hspeed > 0) && (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16))
    instance_destroy();

