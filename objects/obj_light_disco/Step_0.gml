/// @description Disco Ball logic

//Stay in position
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2;
y = __view_get( e__VW.YView, 0 ) + 40;

//Set the angle
image_angle += 0.2*sign(ready);

