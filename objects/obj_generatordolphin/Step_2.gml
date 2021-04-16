/// @description Dolphin platform logic

//Inherit event
event_inherited();
    
//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-16)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16)
    instance_destroy();

