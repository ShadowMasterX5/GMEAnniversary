/// @description Handle the scale and position of the surface.

//Snap to the center of the view.
x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2;

//This grows the image, you can change the values to control how fast the circle should grow.
scale += 6.25;
if (scale > 250)
    instance_destroy();

