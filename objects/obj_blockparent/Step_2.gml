/// @description Set depth

//Check for the player
var held = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+4,obj_parhold,0,0);

//If the player is in position
if (held)
&& (held.vspeed < 0)
&& (held.object_index != obj_football)
&& (held.bbox_top > bbox_bottom+held.vspeed) {

    //Bump it
    ready = 1;
    
    //Set the vertical speed
    vspeed = -2;
    
    //Move down
    alarm[0] = 4;
    
    //Perform block specific event
    event_user(0);
}

//Set depth
if (speed == 0)
    depth = 9;
else
    depth = -2;

