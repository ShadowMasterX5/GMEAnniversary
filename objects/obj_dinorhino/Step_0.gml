/// @description Dino Rhino logic

//If walking and not blowing fire
if (hspeed != 0) {

    //Jump when a wall is reached
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed*2,bbox_top+4,bbox_left+hspeed*2,bbox_bottom-1,obj_solid,0,0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed*2,bbox_top+4,bbox_right+hspeed*2,bbox_bottom-1,obj_solid,0,0))) {
    
        //If there's no gravity, hop
        if (gravity == 0) {
        
            vspeed = -4.5;
            y--;
        }
    }
    
    //Move away from walls
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed,bbox_top+4,bbox_left+hspeed,bbox_bottom-1,obj_solid,0,0)))
        x += 0.5;
    if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed,bbox_top+4,bbox_right+hspeed,bbox_bottom-1,obj_solid,0,0)))
        x -= 0.5;    
}

//Turn on enemies
event_user(2);

//Floor collision
event_user(4);

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;
    
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

