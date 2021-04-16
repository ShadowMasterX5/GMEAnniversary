/// @description Throw up a snowball

//If there's not gravity
if (gravity == 0) {
    
    //If the player does exist.
    if (instance_exists(obj_playerparent)) {
    
        //If the player is at the right.
        if (obj_playerparent.x > x) {
        
            with (instance_create(x,y,obj_icebro_snowball)) {
            
                hspeed = 1.2;
                image_xscale = 1;
            }
        }
        
        //Otherwise, if the player is at the left.
        else if (obj_playerparent.x < x) {
        
            with (instance_create(x,y,obj_icebro_snowball)) {
            
                hspeed = -1.2;
                image_xscale = -1;
            }
        }
    }
    
    //Otherwise, if it does not exist.
    else {
        
        with (instance_create(x,y,obj_icebro_snowball)) {
        
            hspeed = -1.2;
            image_xscale = -1;
        }
    }
    
    //Next
    alarm[3] = 30;
    
    //Set the default sprite.
    shoot = 1;
    
    //Stop horizontal speed
    prevhsp = hspeed;
    hspeed = 0;
    
    //Stop alarm 0
    prevalm = alarm[0];
    alarm[0] = -1;
}
else
    alarm[2] = 1;

