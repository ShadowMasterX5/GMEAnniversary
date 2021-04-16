/// @description Dolphin logic

//Check for water
water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim, 0, 0);

//If there's water
if (water) && (y > water.y+12) {
    
    //Snap in water
    y = water.y+12

    //Stop vertical movement
    vspeed = -5.5;
    
    //Reverse horizontal speed
    hspeed = -hspeed;
}

//Set facing direction
xscale = 1*sign(hspeed);

//Cap vertical speed
if (vspeed > 3.5)
    vspeed = 3.5;

