/// @description Jumping cheep cheep logic

//Cap vertical speed
if (vspeed > 4)
    vspeed = 4;

//Find water
water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0);

//If there's a body of water
if (water) {
    
    //If the cheep makes contact with water.
    if ((y > water.y-4) && (vspeed > 0)) {
    
        //Snap to position.
        y = water.y-4;
        
        //Jump
        gravity = 0.2;
        if (jumping < 3) {
        
            //Set the vertical speed.
            vspeed = -3;
            
            //Increment jump
            jumping++;
        }
        else if (jumping == 3) {
        
            //Set the vertical speed.
            vspeed = -6;
            
            //Repeat the jump cycle.
            jumping = 0;
        }
    }
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

