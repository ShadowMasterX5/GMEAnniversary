/// @description Create player

with (player_retrieve(x,y)) {

    //If the pipe is used as a cannon
    if (other.cannon > 0) {
    
        //If the player came from a diagonal cannon
        if (other.cannon == 2) {
        
            //Set the horizontal speed
            xspeed = other.hspeed;
        }
        
        //Set the vertical speed
        yspeed = other.vspeed;
        
        //Set jump state
        state = 2;
    }
    else {
    
        //If the object was moving down, hereby vertical speed
        if (other.vspeed > 0) {
        
            //Set vertical speed
            yspeed = other.vspeed;
            
            //Set jump state
            state = 2;
        }
    }
    
    //Facing direction
    xscale = other.image_xscale;
}

//Destroy
instance_destroy();

