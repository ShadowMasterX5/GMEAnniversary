/// @description Gladrus logic

//Inherit event
event_inherited();

//If the gladrus is angry
if (charge == 1) {

    //Previous hspeed
    prevhspeed = hspeed;
    
    //If the direction changed, speed up
    if (hspeed != prevhspeed) then hspeed = sign(hspeed)*1.5;
        
    //Keep charging at the player
    if (charge == 1) {
    
        //If there's no gravity
        if (gravity == 0) {
            
            //Follow the player
            if (!instance_exists(obj_playerparent))
            || (obj_playerparent.x < x) {
            
                hspeed -= 0.0324;
                if (hspeed < -1.5)
                    hspeed = -1.5;
            }
            else {
            
                hspeed += 0.0324;
                if (hspeed > 1.5)
                    hspeed = 1.5;
            }
        }
    }
    
    //Face towards the player
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//Otherwise, face towards direction
else {

    //Handle squish animation
    if (squishy == 1) {
    
        //Return to normal
        fxs -= 0.05;
        fys += 0.05;
    
        //Start charging at Mario
        if (fxs <= 1) && (fys >= 1) {
        
            //End squish
            squishy = 2;
            
            //Begin to charge
            charge = 1;
            
            //Set the sprite
            sprite_index = spr_gladrus_mad;
            
            //Animate
            image_speed = 0.3;
        }
    }
    
    //Face towards the player
    if (hspeed > 0)
        xscale = 1;
    else if (hspeed < 0)
        xscale = -1;
}

