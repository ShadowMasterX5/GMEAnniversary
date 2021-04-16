/// @description Fire Chomp logic

//Update fireballs animation
anim += 0.2;

//If the object is not spitting a fireball.
if (!ready) {

    //If the player does exist.
    if (instance_exists(obj_mario)) {
    
        //Follow the player horizontally.
        if (obj_mario.x > x) {
        
            hspeed += 0.0324;
            if (hspeed > 1)
                hspeed = 1;
        }
        else if (obj_mario.x < x) {
        
            hspeed -= 0.0324;
            if (hspeed < -1)
                hspeed = -1;
        }
        
        //Follow the player vertically.
        if (obj_mario.y > y) {
        
            vspeed += 0.0324;
            if (vspeed > 1)
                vspeed = 1;
        }
        else if (obj_mario.y < y) {
        
            vspeed -= 0.0324;
            if (vspeed < -1)
                vspeed = -1;
        }
    }
    
    //Otherwise, if the player does not exist.
    else {
    
        //Follow the camera horizontally.
        if (obj_levelcontrol.x > x) {
        
            hspeed += 0.0324;
            if (hspeed > 1)
                hspeed = 1;
        }
        else if (obj_levelcontrol.x < x) {
        
            hspeed -= 0.0324;
            if (hspeed < -1)
                hspeed = -1;
        }
        
        //Follow the camera vertically.
        if (obj_levelcontrol.y > y) {
        
            vspeed += 0.0324;
            if (vspeed > 1)
                vspeed = 1;
        }
        else if (obj_levelcontrol.y < y) {
        
            vspeed -= 0.0324;
            if (vspeed < -1)
                vspeed = -1;
        }    
    }
}

//Otherwise, if it's spitting a fireball.
else if (ready) {

    //Stop movement
    speed = 0;
    
    //Exit
    exit;
}

//Set the facing direction
if (instance_exists(obj_mario)) { //If the player does exist.

    if (obj_mario.x > x)
        xscale = 1;
    else if (obj_mario.x < x)
        xscale = -1;
}

//Otherwise, if it does not exist.
else {

    if (obj_levelcontrol.x > x)
        xscale = 1;
    else if (obj_levelcontrol.x < x)
        xscale = -1;    
}

//Manage fireball positions.
oldx[0] = x;
oldy[0] = y;
for (i=amount_previous; i>0; i-=1) {

    oldx[i] = oldx[i-1]
    oldy[i] = oldy[i-1]
}

