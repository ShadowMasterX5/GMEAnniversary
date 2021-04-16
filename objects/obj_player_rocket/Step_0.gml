/// @description Make the player do his explosive debut

//If the rocket reaches the target 
if (y < ystart+48) {

    //If not moving up
    if (vspeed == 0) {

        //Create a new player object
        player_retrieve(x,y)
        
        //Create explosion
        with (instance_create(x-8,y-8,obj_explosion)) harmplayer = 0;
    
        //Destroy
        instance_destroy();
    }
    
    //Otherwise, slowdown and shake
    else {
    
        //Slow down
        friction = 0.05;
        
        //Shake
        port_x = random_range(1,-1);
        port_y = random_range(1,-1);
    }
}

