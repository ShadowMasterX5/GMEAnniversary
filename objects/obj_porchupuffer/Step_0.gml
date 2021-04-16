/// @description Porchu puffer logic

//Chase the player
if (!instance_exists(obj_playerparent)) //If the player does not exists or it's at the left
|| (obj_playerparent.x < x) {

    hspeed -= 0.0324;
    if (hspeed < -2.5)
        hspeed = -2.5;    
}

//Otherwise, go to the right
else if (obj_playerparent.x > x) {

    hspeed += 0.0324;
    if (hspeed > 2.5)
        hspeed = 2.5;
}

//Facing direction
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else 
    xscale = 1;

