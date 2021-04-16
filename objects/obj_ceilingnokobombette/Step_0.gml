/// @description Ceiling Nokobombette logic

//If the buzzy is in the ceiling
if (ready == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is nearby
        if (obj_playerparent.x > x-32)
        && (obj_playerparent.x < x+32) 
        && (obj_playerparent.y > y) {
        
            //Set the sprite
            sprite_index = spr_nokobombette_bomb;
            
            //Start animating
            image_speed = 0.3;
            image_index = 0;
        
            //Stop horizontal speed
            hspeed = 0;
            
            //Drop
            ready = 1;
        }
    }
    
    //Make sure if does not wall off ceilings
    if ((hspeed < 0) && (!position_meeting(bbox_left,y-4,obj_solid)))
    || ((hspeed > 0) && (!position_meeting(bbox_right,y-4,obj_solid)))
        hspeed = -hspeed;
}

//Otherwise, if the buzzy beetle is falling
else {

    //Floor collision
    event_user(4);
    
    //Check if in ground and explode if so
    if (gravity == 0) {
    
        //Create a shell
        instance_create(x-8,y,obj_explosion);
        
        //Destroy
        instance_destroy();
    }
}

//Turn at enemies script
event_user(2);

//Wall collision
event_user(3);

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

