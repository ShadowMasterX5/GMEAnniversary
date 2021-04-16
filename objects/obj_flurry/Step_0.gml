/// @description Flurry logic

//Previous hspeed
prevhspeed = hspeed;

//Inherit event
event_inherited();
    
//Keep charging at the player
if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0)) {

    //Enable charge
    charge = 1;

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
        
    //If the direction changed, speed up
    if (hspeed != prevhspeed)
        hspeed = sign(hspeed)*1.5;
}
else {

    //If charging...
    if (charge == 1) {
        
        //Turn towards the player
        alarm[11] = 60;
    
        //Stop charging
        charge = 0;
        
        //Set normal speed
        if (hspeed > 0)
            hspeed = 1;
        else
            hspeed = -1;
    }
}

//Face towards the player but only if in contact with a slippery surface
if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0)) {
    
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}
else
    xscale = 1*sign(hspeed);

