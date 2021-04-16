/// @description Brick Goomba logic

//Wall collision
event_user(3);

//Floor collision
event_user(4);

//Set up the facing direction if in ground and make it jump again
if (gravity == 0) {

    //If the object jumped
    if (jumping == 2) {
    
        //Stop horizontal movement
        hspeed = 0;
    
        //End jump
        jumping = 3;
        
        //Jump again
        alarm[0] = 60;
    }
    
    //Otherwise, if the player does exist and it's nearby
    else if (jumping == 0) {
    
        //If the player does exist
        if (instance_exists(obj_playerparent)) 
        && (obj_playerparent.x > x-32)
        && (obj_playerparent.x < x+32) 
        && (obj_playerparent.y <= y) {
        
            //Animate
            image_speed = 0.1;
        
            //Start jump
            jumping = 1;
        }
    }
}

//Otherwise, end jump
else {

    if (jumping == 1) && (vspeed > 0)
        jumping = 2;
}

