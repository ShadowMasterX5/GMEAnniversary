/// @description Bomb logic

//Inherit event
event_inherited();

//Destroy when outside
if (y > 0)
&& (outside_view())
    instance_destroy();

