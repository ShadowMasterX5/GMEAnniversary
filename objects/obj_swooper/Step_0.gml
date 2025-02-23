/// @description Swooper logic

//If the swooper is on the ceiling
if (ready == 0) {

    //If the player does exists
    if (instance_exists(obj_playerparent)) {
    
        //If the player is nearby...
        if ((obj_playerparent.x > x-32) && (obj_playerparent.x < x+32))
        
        //...and the player is below the swooper
        && (obj_playerparent.y > y) {
        
            //Play 'Swooper' sound
            audio_play_sound(snd_swooper, 0, false);
            
            //Set flying sprite
            sprite_index = spr_swooper_fly;
            
            //Animate
            image_speed = 0.3;
            
            //Set the vertical speed
            vspeed = 1.5;
            
            //Set the horizontal motion
            if (obj_playerparent.x < x)
                ready = -1;
            else
                ready = 1;
        }
    }
    
    //Set the facing direction
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//Otherwise, if the swooper is flying
else {

    //If the swooper is flying to the right
    if (ready == 1) {
    
        if (direction == 0)
            direction = 0;
        else if (direction != 0)
            direction += 0.75;
    }
    
    //Otherwise, if the swooper is flying to the left
    else if (ready == -1) {
    
        if (direction == 180)
            direction = 180;
        else if (direction != 180)
            direction -= 0.75;
    }
        
    //Set the facing direction
    if (hspeed > 0)
        xscale = 1;
    else if (hspeed < 0)
        xscale = -1;
}

