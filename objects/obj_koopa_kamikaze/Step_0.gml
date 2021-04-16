/// @description Kamikaze koopa logic

//Previous hspeed
prevhspeed = hspeed;

//Inherit event
event_inherited();

//If the direction changed, speed up
if (hspeed != prevhspeed) then hspeed = sign(hspeed)*2;
    
//Keep charging at the player
if (charge == 1) {

    //If there's no gravity
    if (gravity == 0) {
        
        //Follow the player
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x) {
        
            hspeed -= 0.1;
            if (hspeed < -2)
                hspeed = -2;
        }
        else {
        
            hspeed += 0.1;
            if (hspeed > 2)
                hspeed = 2;
        }
    }
}

