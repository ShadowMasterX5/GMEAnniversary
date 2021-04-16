/// @description Chargin' Chuck logic

//If running or jumping
if (sprite_index == spr_charginchuck_walk) 
|| (sprite_index == spr_charginchuck_jump) {

    //Jump when a wall is reached
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed*2,bbox_top+4,bbox_left+hspeed*2,bbox_bottom-1,obj_solid,0,0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed*2,bbox_top+4,bbox_right+hspeed*2,bbox_bottom-1,obj_solid,0,0))) {
    
        //If there's no gravity, hop
        if (gravity == 0) {
        
            //Set the jumping sprite
            sprite_index = spr_charginchuck_jump;
            
            //Do not animate
            image_speed = 0;
            image_index = 0;
            
            //Set the vertical speed
            vspeed = -4.5;
            
            //Boost jump
            y--;
        }
    }
    
    //Move away from walls
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed,bbox_top+4,bbox_left+hspeed,bbox_bottom-1,obj_solid,0,0)))
        x += 1.75;
    if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed,bbox_top+4,bbox_right+hspeed,bbox_bottom-1,obj_solid,0,0)))
        x -= 1.75;    
}

//Floor collision
event_user(4);

//Facing direction
event_user(8);

//Update animation
if (gravity == 0) {

    //If jumping...
    if (sprite_index == spr_charginchuck_jump) {
    
        //Set the running sprite
        sprite_index = spr_charginchuck_walk;
        
        //Animate
        image_speed = 0.5;
        image_index = 1;
    }
    
    //Always charge at the player
    if (instance_exists(obj_playerparent)) {
    
        //If the player managed to get away...
        if (hspeed < 0) && (obj_playerparent.x > x+32)
        || (hspeed > 0) && (obj_playerparent.x < x-32) {
        
            //Stop animation
            sprite_index = spr_charginchuck;
            
            //Stop horizontal speed
            hspeed = 0;
            
            //Charge at the player again
            alarm[10] = 32;
        }
    }
}

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

