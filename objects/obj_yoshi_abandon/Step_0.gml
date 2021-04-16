/// @description Runaway logic

//Default event
event_inherited();

//Check for a water object
var water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0);

//If the object is not underwater and makes contact with water
if (water) 
&& (!swimming) {

    //Make the object go underwater
    swimming = true;
    
    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}

//Otherwise, if the object is underwater and it's not underwater, end swimming.
else if (!water) 
&& (swimming)
    swimming = false;

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0) 
    xscale = -1;

