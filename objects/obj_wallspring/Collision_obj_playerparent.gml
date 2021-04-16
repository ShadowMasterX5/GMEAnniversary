/// @description Make the player interact with the item

//If the player is above and moving down, stomp the trampoline.
if (other.bbox_bottom < bbox_top-vspeed+5)
&& (other.yspeed > 0) {

    //Animate
    image_speed = 0.4;
    
    //Player logic
    with (other) {
    
        //Stop horizontal movement
        xspeed = 0;
        
        //Stop vertical movement
        yspeed = 0;
        if (ygrav > 0)
            ygrav = 0;
    }
    
    //Trampoline is ready
    ready = 1;
    ready2 = 1;
    
    //Make sure to reset the player variable
    with (other) event_user(15);
}

//If the spring is ready
if (ready) {

    //Set idle state
    obj_playerparent.state = 0;    
    
    //Prevent Mario's gravity
    obj_playerparent.disablegrav = 1;

    //Prevent Mario from jumping.
    obj_playerparent.jumping = 2;
    
    //Stop sliding
    obj_playerparent.sliding = 0;
        
    //Set y position
    obj_playerparent.y = self.y+(image_index*3)-14;
}

