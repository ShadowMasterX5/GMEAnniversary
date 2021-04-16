/// @description Pow killer logic

//Stay in screen
x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2;
y = __view_get( e__VW.YView, 0 );

//Update parent hitpoint
if (parent != noone)
    parent.hitcombo = hitcombo;

