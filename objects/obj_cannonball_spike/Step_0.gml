/// @description Cannon ball logic

//Destroy if outside the view
if (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.WView, 0 )+16)
    instance_destroy();

