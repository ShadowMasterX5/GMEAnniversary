/// @description Burning flames

//Animate
image_speed = 0.25;

//Inherit event
event_inherited();

//Do not create inside solids
while (position_meeting(x+8,bbox_bottom,obj_solid))
    y--;

