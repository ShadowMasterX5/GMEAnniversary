/// @description Basketsphere bottom logic

//Change the angle
image_angle += 5*sign(hspeed)*-1;

//Destroy if outside the view
if (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.WView, 0 )+32)
    instance_destroy();

