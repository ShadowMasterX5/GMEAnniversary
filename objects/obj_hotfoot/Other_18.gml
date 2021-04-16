/// @description Handle movement

//If the player does exist and it's not looking at him.
if (instance_exists(obj_playerparent))
&& (movenow = 1) {

    //If the player is at the right
    if (obj_playerparent.x > x+4) {
    
        hspeed = 0.5;
        xscale = 1;
    }
    
    //Otherwise, if the player is at the left
    else if (obj_playerparent.x < x-4) {
    
        hspeed = -0.5;
        xscale = -1;
    }
}

//Otherwise, stop moving
else
hspeed = 0;

//Check if the player is not looking at the hotfoot
if (instance_exists(obj_playerparent)) {

    //If the player is not spinjumping
    if (obj_playerparent.stompstyle != 1) {
    
        //If the player is at the right of the hotfoot
        if (obj_playerparent.x > x+4) {
        
            //If the player is looking at the right, move
            if (obj_playerparent.xscale == 1)
                movenow = 1;
                
            //Otherwise, do not move
            else
                movenow = 0;
        }
        
        //Otherwise if the player is at the left of the hotfoot
        else if (obj_playerparent.x < x-4) {
        
            //If the player is looking at the left, move
            if (obj_playerparent.xscale == -1)
                movenow = 1;
            
            //Otherwise, do not move
            else
                movenow = 0;
        }
        
        //Otherwise, do not move
        else
            movenow = 0;
    }
    
    //Otherwise, stop
    else
        movenow = 0;
}

//Otherwise, do not move
else
    movenow = 0;

