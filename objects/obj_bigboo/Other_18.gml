/// @description Handle movement

//If the player does exist and it's not looking at him.
if (instance_exists(obj_playerparent))
&& (movenow = 1) {

    //If the player is at the right
    if (obj_playerparent.x > x+8) {
    
        //Set horizontal movement
        hspeed += 0.025;
        
        //Set facing direction
        if (prevxscale != 1) 
        && (sprite_index != spr_boo_large_turn) {
        
            //Set turning animation
            sprite_index = spr_boo_large_turn
            
            //Animate it
            image_speed = 0.15;
            image_index = 0;
        
            //Set prev xscale
            prevxscale = 1;
        }
    }
    
    //Otherwise, if the player is at the left
    else if (obj_playerparent.x < x-8) {
    
        //Set the horizontal speed
        hspeed -= 0.025;
        
        //Set facing direction
        if (prevxscale != -1) 
        && (sprite_index != spr_boo_large_turn) {
        
            //Set turning animation
            sprite_index = spr_boo_large_turn
            
            //Animate it
            image_speed = 0.15;
            image_index = 0;
        
            //Set prev xscale
            prevxscale = -1;
        }
    }
    
    //If the player is below
    if (obj_playerparent.y > y+8)
        vspeed += 0.025;
    
    //Otherwise, if it's above
    else if (obj_playerparent.y < y+8)
        vspeed -= 0.025;
}

//Otherwise, stop moving
else {
    
    //Slow down till it stops
    speed = max(0,abs(speed)-0.025)*sign(speed);
    if (speed < 0.025)
        speed = 0;
}

//Remember state
movenowprev = movenow;

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

