/// @description Destroy if outside the view

if ((outside_view()) && (y > __view_get( e__VW.YView, 0 )-16))
    instance_destroy();

