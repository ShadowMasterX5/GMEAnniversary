/// @description The player has cleared the level by collecting a card

//Current goal
mygoal = -1;

//Do not animate
image_speed = 0;

//Set gravity
gravity = 0.25;

//Anim
anim = 0;

//Move
ready = 0;

//Take time
ready2 = 0;

//Do not flash
isflashing = 0;

//Whether the object is swimming
swimming = false;

//Kill every enemy on screen
with (instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_powkiller)) 
    killtype = 1;

